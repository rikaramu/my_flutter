import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo.dart';

final addTodoKey = UniqueKey();
final activeFilterKey = UniqueKey();
final completedFilterKey = UniqueKey();
final allFilterKey = UniqueKey();

class MyRPTodosScope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPTodosScope.build');
    return ProviderScope(
      child: MyRPTodos(),
    );
  }
}

// ignore: top_level_function_literal_block
final todoListProvider = StateNotifierProvider((ref) {
  return TodoList([
    Todo(id: 'todo-0', desc: 'hi'),
    Todo(id: 'todo-1', desc: 'hello'),
    Todo(id: 'todo-2', desc: 'bonjour'),
  ]);
});

enum TodoListFilter {
  all,
  active,
  completed,
}

/// The currently active filter.
///
/// We use StateProvider here as there is no fancy logic behind manipulating
/// the value since it's just enum.
final todoListFilter = StateProvider((_) => TodoListFilter.all);

/// The number of uncompleted todos
///
/// By using Provider, this value is cached, making it performant.\
/// Even multiple widgets try to read the number of uncompleted todos,
/// the value will be computed only once (until the todo-list changes).
///
/// This will also optimise unneeded rebuilds if the todo-list changes, but the
/// number of uncompleted todos doesn't (such as when editing a todo).
// ignore: top_level_function_literal_block
final uncompletedTodosCount = Provider((ref) {
  return ref
      .watch(todoListProvider.state)
      .where((todo) => !todo.completed)
      .length;
});

/// The list of todos after applying of todoListFilter.
///
/// This too uses Provider, to avoid recomputing the filtered list unless either
/// the filter of or the todo-list updates.
// ignore: top_level_function_literal_block
final filteredTodos = Provider((ref) {
  final filter = ref.watch(todoListFilter);
  final todos = ref.watch(todoListProvider.state);

  switch (filter.state) {
    case TodoListFilter.completed:
      return todos.where((todo) => todo.completed).toList();
    case TodoListFilter.active:
      return todos.where((todo) => !todo.completed).toList();
    case TodoListFilter.all:
    default:
      return todos;
  }
});

final _currentTodo = ScopedProvider<Todo>(null);

class MyRPTodos extends HookWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPTodos.build');
    final todos = useProvider(filteredTodos);
    final newTodoController = useTextEditingController();

    return GestureDetector(
      onTap: () {
        debugPrint('MyRPTodos.build.GestureDetector.onTap');
        FocusScope.of(context).unfocus();
      },
      child: CupertinoPageScaffold(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            const Title(),
            CupertinoTextField(
              controller: newTodoController,
              onSubmitted: (value) {
                context.read(todoListProvider).add(value);
                newTodoController.clear();
              },
            ),
            const SizedBox(height: 42),
            const Toolbar(),
            if (todos.isNotEmpty) const Divider(height: 0),
            for (var i = 0; i < todos.length; i++) ...[
              if (i > 0) const Divider(height: 0),
              Dismissible(
                key: ValueKey(todos[i].id),
                onDismissed: (_) {
                  context.read(todoListProvider).remove(todos[i]);
                },
                child: ProviderScope(
                  overrides: [
                    _currentTodo.overrideWithValue(todos[i]),
                  ],
                  child: const TodoItem(),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'todos',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(38, 47, 47, 247),
        fontSize: 100,
        fontWeight: FontWeight.w100,
        fontFamily: 'Helvetica Neue',
      ),
    );
  }
}

class Toolbar extends HookWidget {
  const Toolbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filter = useProvider(todoListFilter);

    Color textColorFor(TodoListFilter value) {
      return filter.state == value ? Colors.blue : null;
    }

    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              '${useProvider(uncompletedTodosCount).toString()} items left',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Tooltip(
            key: allFilterKey,
            message: 'All todos',
            // ignore: deprecated_member_use, TextButton is not available in stable yet
            child: FlatButton(
              onPressed: () => filter.state = TodoListFilter.all,
              visualDensity: VisualDensity.compact,
              textColor: textColorFor(TodoListFilter.all),
              child: const Text('All'),
            ),
          ),
          Tooltip(
            key: activeFilterKey,
            message: 'Only uncompleted todos',
            // ignore: deprecated_member_use, TextButton is not available in stable yet
            child: FlatButton(
              onPressed: () => filter.state = TodoListFilter.active,
              visualDensity: VisualDensity.compact,
              textColor: textColorFor(TodoListFilter.active),
              child: const Text('Active'),
            ),
          ),
          Tooltip(
            key: completedFilterKey,
            message: 'Only completed todos',
            // ignore: deprecated_member_use, TextButton is not available in stable yet
            child: FlatButton(
              onPressed: () => filter.state = TodoListFilter.completed,
              visualDensity: VisualDensity.compact,
              textColor: textColorFor(TodoListFilter.completed),
              child: const Text('Completed'),
            ),
          ),
        ],
      ),
    );
  }
}

class TodoItem extends HookWidget {
  const TodoItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = useProvider(_currentTodo);
    final itemFocusNode = useFocusNode();
    // listen to focus chances
    useListenable(itemFocusNode);
    final isFocused = itemFocusNode.hasFocus;

    final textEditingController = useTextEditingController();
    final textFieldFocusNode = useFocusNode();

    return Material(
      color: Colors.white,
      elevation: 6,
      child: Focus(
        focusNode: itemFocusNode,
        onFocusChange: (focused) {
          if (focused) {
            textEditingController.text = todo.desc;
          } else {
            // Commit changes only when the textfield is unfocused, for performance
            context.read(todoListProvider).edit(todo.id, textEditingController.text);
            
            // .edit(
            //       id: todo.id,
            //       desc: textEditingController.text,
            //     );
          }
        },
        child: ListTile(
          onTap: () {
            itemFocusNode.requestFocus();
            textFieldFocusNode.requestFocus();
          },
          leading: Checkbox(
            value: todo.completed,
            onChanged: (value) =>
                context.read(todoListProvider).toggle(todo.id),
          ),
          title: isFocused
              ? TextField(
                  autofocus: true,
                  focusNode: textFieldFocusNode,
                  controller: textEditingController,
                )
              : Text(todo.desc),
        ),
      ),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

class Todo {
  Todo({
    this.desc,
    this.completed = false,
    String id,
  }) : id = id ?? _uuid.v4();

  final String id;
  final String desc;
  final bool completed;

  @override
  String toString() {
    return 'Todo(description: $desc, completed: $completed, id: $id)';
  }
}

class TodoList extends StateNotifier<List<Todo>> {
  TodoList([List<Todo> initTodos]) : super(initTodos ?? []);

  void add(String desc) {
    state = [
      ...state,
      Todo(desc: desc),
    ];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            desc: todo.desc,
            completed: !todo.completed,
            id: todo.id,
          )
        else
          todo,
    ];
  }

  void edit(String id, String desc) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            desc: desc,
            completed: todo.completed,
            id: todo.id,
          )
        else
          todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}

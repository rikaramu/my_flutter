import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyRPTodosScope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPTodosScope.build');
    return ProviderScope(
      child: MyRPTodos(),
    );
  }
}

class MyRPTodos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('MyRPTodos.build');
    return CupertinoPageScaffold(
      child: ListView(),
    );
  }
}

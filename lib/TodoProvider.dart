import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/TodoModel.dart';
import 'package:todo_sample/api/TodoCollection.api.dart';
import 'package:todo_sample/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class TodoProvider extends ChangeNotifier {
  TodoProvider();

  factory TodoProvider.of(BuildContext context, {bool listen = true}) {
    return Provider.of<TodoProvider>(context, listen: listen);
  }

  List<TodoModel?>? todos = [];

  bool? done = false;

  void getAllTodos() {
    TodoCollection().getTodos(token: sharedPrefs.getString('token')).then(
        (value) {
      todos = value?.data;
      notifyListeners();
    }, onError: (error) {
      print('error: ${error}');
    });
  }
}

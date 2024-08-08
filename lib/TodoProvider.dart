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

  List<TodoModel?>? todos = [
    TodoModel(
      id: '1',
      title: 'asdf',
      categoryId: 'sadfsd',
      isCompleted: false,
    ),
    TodoModel(
      id: '2',
      title: 'Another one',
      categoryId: 'sadfsd',
      isCompleted: false,
    )
  ];

  bool? done = false;

  void addTodoAction() {
    todos?.add(TodoModel(
      id: 'tset',
      title: 'A new task',
      isCompleted: false,
    ));
    notifyListeners();
  }

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

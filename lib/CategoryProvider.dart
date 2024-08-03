import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/CategoryModel.dart';
import 'package:todo_sample/api/TodoCollection.api.dart';
import 'package:todo_sample/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class CategoryProvider extends ChangeNotifier {
  CategoryProvider();

  factory CategoryProvider.of(BuildContext context, {bool listen = true}) {
    return Provider.of<CategoryProvider>(context, listen: listen);
  }

  List<CategoryModel?>? categories = [const CategoryModel(name: 'asdf')];

  void getAllCategories() {
    TodoCollection().getCategories(token: sharedPrefs.getString('token')).then(
        (value) {
      categories = value;
      notifyListeners();
    }, onError: (error) {
      print('error: ${error}');
    });
  }
}

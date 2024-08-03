import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:dio/dio.dart';
import 'package:todo_sample/models/gettodos_model.dart';
import 'package:todo_sample/models/TodoModel.dart';
import 'package:todo_sample/models/CategoryModel.dart';

@NowaGenerated()
class TodoCollection {
  factory TodoCollection() {
    return _instance;
  }

  TodoCollection._();

  static final TodoCollection _instance = TodoCollection._();

  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'https://nowa-todo-api-frkm7qzvlq-ew.a.run.app/api'));

  Future<List<CategoryModel?>?> getCategories(
      {String? token =
          'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFAdGVzdC5jb20iLCJnaXZlbl9uYW1lIjoidGVzdCB0ZXN0IiwibmJmIjoxNzIyNTMyNjE5LCJleHAiOjE3MjI1MzYyMTksImlhdCI6MTcyMjUzMjYxOSwiaXNzIjoiaHR0cHM6Ly9ub3dhLmRldiJ9.bZSH9XJ9hA2uOoVNUHhze6gyzkZSNXYgfV0cKjutgNW6b8gtQn04kerJNpr0qT8lqD5bXWnGATOXe9erJxWE2A'}) async {
    final Response res = await _dioClient.get('/category',
        options: Options(headers: {'Authorization': 'Bearer ${token}'}));
    return (res.data as List)
        .map((e) => CategoryModel.fromJson(json: e))
        .toList();
  }

  Future<CategoryModel?> addCategory(
      {String? token =
          'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFAdGVzdC5jb20iLCJnaXZlbl9uYW1lIjoidGVzdCB0ZXN0IiwibmJmIjoxNzIyNTIwNzY3LCJleHAiOjE3MjI1MjQzNjcsImlhdCI6MTcyMjUyMDc2NywiaXNzIjoiaHR0cHM6Ly9ub3dhLmRldiJ9.mjbSkj7KFrmcmQbEQZjicxohdoTm0XMHntZEu3yc2QcXnn5KKNNuv6AfjCxT3uqaWf6YthNcBkb54kGWLjNwXQ'}) async {
    final Response res = await _dioClient.post(
      '/category',
      data: '{\n   "name": "Inbox"\n}',
      options: Options(headers: {'Authorization': 'Bearer ${token}'}),
    );
    return CategoryModel.fromJson(json: res.data!);
  }

  Future<TodoModel?> addTodo(
      {String? token =
          'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFAdGVzdC5jb20iLCJnaXZlbl9uYW1lIjoidGVzdCB0ZXN0IiwibmJmIjoxNzIyNTIwNzY3LCJleHAiOjE3MjI1MjQzNjcsImlhdCI6MTcyMjUyMDc2NywiaXNzIjoiaHR0cHM6Ly9ub3dhLmRldiJ9.mjbSkj7KFrmcmQbEQZjicxohdoTm0XMHntZEu3yc2QcXnn5KKNNuv6AfjCxT3uqaWf6YthNcBkb54kGWLjNwXQ',
      String? category = '55876893-92dd-4dd1-a982-009a7a88242f'}) async {
    final Response res = await _dioClient.post(
      '/todo',
      data:
          '{\n   "title": "something",\n   "description": "empty todo",\n   "categoryId": "${category}"\n}',
      options: Options(headers: {'Authorization': 'Bearer ${token}'}),
    );
    return TodoModel.fromJson(json: res.data!);
  }

  Future<GetTodosModel?> getTodos(
      {String? token =
          'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFAdGVzdC5jb20iLCJnaXZlbl9uYW1lIjoidGVzdCB0ZXN0IiwibmJmIjoxNzIyNTIwNzY3LCJleHAiOjE3MjI1MjQzNjcsImlhdCI6MTcyMjUyMDc2NywiaXNzIjoiaHR0cHM6Ly9ub3dhLmRldiJ9.mjbSkj7KFrmcmQbEQZjicxohdoTm0XMHntZEu3yc2QcXnn5KKNNuv6AfjCxT3uqaWf6YthNcBkb54kGWLjNwXQ'}) async {
    final Response res = await _dioClient.get('/todo',
        options: Options(headers: {'Authorization': 'Bearer ${token}'}));
    return GetTodosModel.fromJson(json: res.data!);
  }
}

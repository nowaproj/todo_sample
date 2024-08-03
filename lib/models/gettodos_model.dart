import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/TodoModel.dart';

@NowaGenerated()
class GetTodosModel_data {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetTodosModel_data(
      {this.id,
      this.title,
      this.categoryId,
      this.isCompleted,
      this.description,
      required this.dueDate,
      this.createdAt,
      this.updatedAt});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetTodosModel_data.fromJson({required Map<String, dynamic> json}) {
    return GetTodosModel_data(
      id: json['id'],
      title: json['title'],
      categoryId: json['categoryId'],
      isCompleted: json['isCompleted'],
      description: json['description'],
      dueDate: json['dueDate']!,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  final String? id;

  final String? title;

  final String? categoryId;

  final bool? isCompleted;

  final String? description;

  final dynamic dueDate;

  final String? createdAt;

  final String? updatedAt;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetTodosModel_data copyWith(
      {String? id,
      String? title,
      String? categoryId,
      bool? isCompleted,
      String? description,
      required dynamic dueDate,
      String? createdAt,
      String? updatedAt}) {
    return GetTodosModel_data(
      id: id ?? this.id,
      title: title ?? this.title,
      categoryId: categoryId ?? this.categoryId,
      isCompleted: isCompleted ?? this.isCompleted,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'categoryId': categoryId,
      'isCompleted': isCompleted,
      'description': description,
      'dueDate': dueDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}

@NowaGenerated()
class GetTodosModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetTodosModel({this.pageIndex, this.pageSize, this.count, this.data});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetTodosModel.fromJson({required Map<String, dynamic> json}) {
    return GetTodosModel(
      pageIndex: json['pageIndex'],
      pageSize: json['pageSize'],
      count: json['count'],
      data: json['data']
          ?.map<TodoModel?>((element) => TodoModel.fromJson(json: element))
          ?.toList(),
    );
  }

  final int? pageIndex;

  final int? pageSize;

  final int? count;

  final List<TodoModel?>? data;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetTodosModel copyWith(
      {int? pageIndex, int? pageSize, int? count, List<TodoModel?>? data}) {
    return GetTodosModel(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      data: data ?? this.data,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'pageIndex': pageIndex,
      'pageSize': pageSize,
      'count': count,
      'data': data?.map((element) => element!.toJson()).toList(),
    };
  }
}

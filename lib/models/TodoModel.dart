import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class TodoModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  TodoModel(
      {this.id,
      this.title,
      this.categoryId,
      this.isCompleted,
      this.description,
      this.dueDate,
      this.createdAt,
      this.updatedAt});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory TodoModel.fromJson({required Map<String, dynamic> json}) {
    return TodoModel(
      id: json['id'],
      title: json['title'],
      categoryId: json['categoryId'],
      isCompleted: json['isCompleted'],
      description: json['description'],
      dueDate: json['dueDate'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  final String? id;

  final String? title;

  final String? categoryId;

  bool? isCompleted;

  final String? description;

  final dynamic dueDate;

  final String? createdAt;

  final String? updatedAt;

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

  @NowaGenerated({'loader': 'auto-copy-with'})
  TodoModel copyWith(
      {String? id,
      String? title,
      String? categoryId,
      bool? isCompleted,
      String? description,
      dynamic dueDate,
      String? createdAt,
      String? updatedAt}) {
    return TodoModel(
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
}

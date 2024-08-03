import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class CategoryModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CategoryModel({this.id, this.name, this.iconName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory CategoryModel.fromJson({required Map<String, dynamic> json}) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      iconName: json['iconName'],
    );
  }

  final String? id;

  final String? name;

  final String? iconName;

  @NowaGenerated({'loader': 'auto-copy-with'})
  CategoryModel copyWith({String? id, String? name, String? iconName}) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      iconName: iconName ?? this.iconName,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'iconName': iconName,
    };
  }
}

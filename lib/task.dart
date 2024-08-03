import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class task {
  @NowaGenerated({'loader': 'auto-constructor'})
  task({this.name, this.done});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory task.fromJson({required Map<String, dynamic> json}) {
    return task(name: json['name'], done: json['done']);
  }

  String? name;

  bool? done;

  @NowaGenerated({'loader': 'auto-copy-with'})
  task copyWith({String? name, bool? done}) {
    return task(name: name ?? this.name, done: done ?? this.done);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'name': name, 'done': done};
  }
}

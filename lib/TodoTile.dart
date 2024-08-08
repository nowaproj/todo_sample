import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/TodoModel.dart';

@NowaGenerated({'auto-width': 400.0, 'auto-height': 60.0})
class TodoTile extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const TodoTile({this.todo, super.key});

  final TodoModel? todo;

  @override
  State<TodoTile> createState() {
    return _TodoTileState();
  }
}

@NowaGenerated()
class _TodoTileState extends State<TodoTile> {
  TextEditingController text = TextEditingController();

  bool? editing = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: AnimatedCrossFade(
          firstChild: const Text(
            'Write something',
            style: TextStyle(),
          ),
          secondChild: TextFormField(
            controller: text,
          ),
          crossFadeState: createCrossFadeState(),
          duration: const Duration(milliseconds: 200),
        ),
        tileColor: const Color(4294967295),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        leading: Checkbox(
          value: widget.todo?.isCompleted,
          onChanged: (value) {
            widget.todo.isCompleted = value;
          },
          activeColor: const Color(4294953538),
          side: const BorderSide(color: Color(4294953538)),
          splashRadius: null,
        ),
        subtitle: const Text(
          'Write something',
          style: TextStyle(),
        ),
        isThreeLine: true,
        onTap: () {
          if (editing!) {
            editing = false;
          } else {
            editing = true;
          }
          setState(() {});
        },
      ),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      shadowColor: const Color(610096027),
    );
  }

  CrossFadeState createCrossFadeState() {
    if (editing!) {
      return CrossFadeState.showSecond;
    } else {
      return CrossFadeState.showSecond;
    }
  }
}

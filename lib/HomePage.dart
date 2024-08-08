import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/CategoryProvider.dart';
import 'package:todo_sample/TodoProvider.dart';
import 'package:todo_sample/models/CategoryModel.dart';
import 'package:todo_sample/CategoryItem.dart';
import 'package:todo_sample/models/TodoModel.dart';
import 'package:todo_sample/TodoTile.dart';
import 'package:todo_sample/UserProvider.dart';
import 'package:todo_sample/SettingsPage.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class HomePage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

@NowaGenerated()
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          children: [
            FlexSizedBox(
              width: double.infinity,
              height: 56.0,
              child: ListView.separated(
                itemCount: CategoryProvider.of(context).categories!.length,
                itemBuilder: (context, index) {
                  final CategoryModel? element =
                      CategoryProvider.of(context).categories![index];
                  return CategoryItem(
                    isSelected: createIsSelected(index: index),
                    category: element,
                    onTap: () {
                      CategoryProvider.of(context, listen: false)
                          .selectedCategories = index;
                      CategoryProvider.of(context, listen: false)
                          .notifyListeners();
                    },
                  );
                },
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                  width: 10.0,
                ),
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              height: null,
              flex: 1,
              child: ListView.separated(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                  top: 14.0,
                  bottom: 14.0,
                ),
                shrinkWrap: true,
                itemCount: TodoProvider.of(context).todos!.length,
                itemBuilder: (context, index) {
                  final TodoModel? element =
                      TodoProvider.of(context).todos![index];
                  return const TodoTile();
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8.0,
                  width: 20.0,
                ),
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Hello, ${UserProvider.of(context).user?.firstName ?? '[username]'}',
          style: const TextStyle(),
        ),
        backgroundColor: const Color(4290434043),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()));
            },
            icon: const Icon(
              IconData(62318, fontFamily: 'MaterialIcons'),
              color: Color(4281559428),
            ),
          )
        ],
        centerTitle: false,
      ),
      backgroundColor: const Color(4293916158),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TodoProvider.of(context, listen: false).addTodoAction();
        },
        child: const Icon(
          IconData(57415, fontFamily: 'MaterialIcons'),
        ),
        backgroundColor: const Color(4290434043),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    CategoryProvider.of(context, listen: false).getAllCategories();
    TodoProvider.of(context, listen: false).getAllTodos();
  }

  bool? createIsSelected({int? index = 0}) {
    return index ==
        CategoryProvider.of(context, listen: false).selectedCategories;
  }
}

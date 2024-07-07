import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/CategoryItem.dart';
import 'package:todo_sample/SettingsPage.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class HomePage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

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
                itemCount: 10,
                itemBuilder: (context, index) => const CategoryItem(
                  isSelected: true,
                ),
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
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) => ListTile(
                  title: const Text(
                    'Task name',
                    style: TextStyle(),
                  ),
                  tileColor: const Color(4294967295),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0)),
                  leading: Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  subtitle: const Text(
                    'Write something',
                    style: TextStyle(),
                  ),
                  isThreeLine: true,
                ),
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                  top: 14.0,
                  bottom: 14.0,
                ),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 12.0,
                  width: 12.0,
                ),
              ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Tasks',
          style: TextStyle(),
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
      ),
      backgroundColor: const Color(4293916158),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          IconData(57415, fontFamily: 'MaterialIcons'),
        ),
        backgroundColor: const Color(4290434043),
      ),
    );
  }
}

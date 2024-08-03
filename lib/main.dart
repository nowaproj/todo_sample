import 'package:shared_preferences/shared_preferences.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sample/CategoryProvider.dart';
import 'package:todo_sample/TodoProvider.dart';
import 'package:todo_sample/UserProvider.dart';
import 'package:todo_sample/CategoryItem.dart';
import 'package:todo_sample/Empty.dart';
import 'package:todo_sample/Empty1.dart';
import 'package:todo_sample/HomePage.dart';
import 'package:todo_sample/LoginPage.dart';
import 'package:todo_sample/SettingsPage.dart';
import 'package:todo_sample/SignupPage.dart';

@NowaGenerated()
late final SharedPreferences sharedPrefs;

@NowaGenerated()
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

@NowaGenerated()
class MyApp extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CategoryProvider>(
      create: (context) => CategoryProvider(),
      child: ChangeNotifierProvider<TodoProvider>(
        create: (context) => TodoProvider(),
        child: ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
          child: MaterialApp(
            initialRoute: 'SignupPage',
            routes: {
              'CategoryItem': (context) => const CategoryItem(),
              'Empty': (context) => const Empty(),
              'Empty1': (context) => const Empty1(),
              'HomePage': (context) => const HomePage(),
              'LoginPage': (context) => const LoginPage(),
              'SettingsPage': (context) => const SettingsPage(),
              'SignupPage': (context) => const SignupPage(),
            },
          ),
        ),
      ),
    );
  }
}

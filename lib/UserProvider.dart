import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class UserProvider extends ChangeNotifier {
  UserProvider();

  factory UserProvider.of(BuildContext context, {bool listen = true}) {
    return Provider.of<UserProvider>(context, listen: listen);
  }

  LoginModel_user? user;
}

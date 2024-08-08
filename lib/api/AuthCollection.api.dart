import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:dio/dio.dart';
import 'package:todo_sample/models/login_model.dart';

@NowaGenerated()
class AuthCollection {
  factory AuthCollection() {
    return _instance;
  }

  AuthCollection._();

  static final AuthCollection _instance = AuthCollection._();

  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'https://nowa-todo-api-frkm7qzvlq-ew.a.run.app',
      headers: {'Key': ''}));

  Future<LoginModel?> register(
      {String? firstName = 'test',
      String? lastName = 'test',
      String? email = 'aa@test.com',
      String? password = '123456Aa!'}) async {
    final Response res = await _dioClient.post('/api/account/register',
        data:
            '{\n    "firstName": "${firstName}",\n    "lastName": "${lastName}",\n    "email": "${email}",\n    "password": "${password}"\n}');
    return LoginModel.fromJson(json: res.data!);
  }

  Future<LoginModel?> login(
      {String? email = 'a@test.com', String? password = '123456Aa!'}) async {
    final Response res = await _dioClient.post('/api/account/login',
        data: '{\n    "email": "${email}",\n    "password": "${password}"\n}');
    return LoginModel.fromJson(json: res.data!);
  }
}

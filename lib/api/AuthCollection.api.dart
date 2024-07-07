import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:todo_sample/api/AuthCollection_models.dart';

@NowaGenerated()
class AuthCollection {
  factory AuthCollection() {
    return _instance;
  }

  AuthCollection._();

  static final AuthCollection _instance = AuthCollection._();

  final NowaClient _nowaClient =
      NowaClient(baseUrl: 'https://nowa-todo-api-frkm7qzvlq-ew.a.run.app');

  @NowaGenerated({'loader': 'api_request'})
  Future<RegisterModel> register(
      {String? firstname = 'testtt',
      String? lastname = 'test',
      String? email = 'test2@test.com',
      String? password = 'Aa!12345678'}) async {
    final response = await _nowaClient.post(
      url: '/api/account/register',
      headers: {},
      body:
          '{\n    "firstName": "${firstname}",\n    "lastName": "${lastname}",\n    "email": "${email}",\n    "password": "${password}"\n}',
    );
    return RegisterModel.fromJson(json: response.data);
  }

  @NowaGenerated({'loader': 'api_request'})
  Future logout() async {
    final response = await _nowaClient.get(
      url: '',
      headers: {},
      body: '',
    );
    return response.data;
  }
}

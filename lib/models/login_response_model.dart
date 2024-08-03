import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class LoginResponseModel_user {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginResponseModel_user(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.displayName,
      required this.avatarUrl});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginResponseModel_user.fromJson(
      {required Map<String, dynamic> json}) {
    return LoginResponseModel_user(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      displayName: json['displayName'],
      avatarUrl: json['avatarUrl']!,
    );
  }

  final String? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? displayName;

  final dynamic avatarUrl;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginResponseModel_user copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? lastName,
      String? displayName,
      required dynamic avatarUrl}) {
    return LoginResponseModel_user(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'displayName': displayName,
      'avatarUrl': avatarUrl,
    };
  }
}

@NowaGenerated()
class LoginResponseModel_tokens {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginResponseModel_tokens({this.accessToken, this.refreshToken});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginResponseModel_tokens.fromJson(
      {required Map<String, dynamic> json}) {
    return LoginResponseModel_tokens(
        accessToken: json['accessToken'], refreshToken: json['refreshToken']);
  }

  final String? accessToken;

  final String? refreshToken;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginResponseModel_tokens copyWith(
      {String? accessToken, String? refreshToken}) {
    return LoginResponseModel_tokens(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }
}

@NowaGenerated()
class LoginResponseModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginResponseModel({this.user, this.tokens});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginResponseModel.fromJson({required Map<String, dynamic> json}) {
    return LoginResponseModel(
        user: LoginResponseModel_user.fromJson(json: json['user'] ?? {}),
        tokens: LoginResponseModel_tokens.fromJson(json: json['tokens'] ?? {}));
  }

  final LoginResponseModel_user? user;

  final LoginResponseModel_tokens? tokens;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginResponseModel copyWith(
      {LoginResponseModel_user? user, LoginResponseModel_tokens? tokens}) {
    return LoginResponseModel(
        user: user ?? this.user, tokens: tokens ?? this.tokens);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'user': user?.toJson(), 'tokens': tokens?.toJson()};
  }
}

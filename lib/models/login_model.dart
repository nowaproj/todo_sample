import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class LoginModel_user {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginModel_user(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.displayName,
      this.avatarUrl});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginModel_user.fromJson({required Map<String, dynamic> json}) {
    return LoginModel_user(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      displayName: json['displayName'],
      avatarUrl: json['avatarUrl'],
    );
  }

  final String? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? displayName;

  final dynamic avatarUrl;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginModel_user copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? lastName,
      String? displayName,
      dynamic avatarUrl}) {
    return LoginModel_user(
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
class LoginModel_tokens {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginModel_tokens({this.accessToken, this.refreshToken});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginModel_tokens.fromJson({required Map<String, dynamic> json}) {
    return LoginModel_tokens(
        accessToken: json['accessToken'], refreshToken: json['refreshToken']);
  }

  final String? accessToken;

  final String? refreshToken;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginModel_tokens copyWith({String? accessToken, String? refreshToken}) {
    return LoginModel_tokens(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }
}

@NowaGenerated()
class LoginModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LoginModel({this.user, this.tokens});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory LoginModel.fromJson({required Map<String, dynamic> json}) {
    return LoginModel(
        user: LoginModel_user.fromJson(json: json['user'] ?? {}),
        tokens: LoginModel_tokens.fromJson(json: json['tokens'] ?? {}));
  }

  final LoginModel_user? user;

  final LoginModel_tokens? tokens;

  @NowaGenerated({'loader': 'auto-copy-with'})
  LoginModel copyWith({LoginModel_user? user, LoginModel_tokens? tokens}) {
    return LoginModel(user: user ?? this.user, tokens: tokens ?? this.tokens);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'user': user?.toJson(), 'tokens': tokens?.toJson()};
  }
}

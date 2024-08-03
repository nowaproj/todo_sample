import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class RegisterResponseModel_user1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterResponseModel_user1(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.displayName,
      required this.avatarUrl});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterResponseModel_user1.fromJson(
      {required Map<String, dynamic> json}) {
    return RegisterResponseModel_user1(
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
  RegisterResponseModel_user1 copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? lastName,
      String? displayName,
      required dynamic avatarUrl}) {
    return RegisterResponseModel_user1(
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
class RegisterResponseModel_tokens1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterResponseModel_tokens1({this.accessToken, this.refreshToken});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterResponseModel_tokens1.fromJson(
      {required Map<String, dynamic> json}) {
    return RegisterResponseModel_tokens1(
        accessToken: json['accessToken'], refreshToken: json['refreshToken']);
  }

  final String? accessToken;

  final String? refreshToken;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RegisterResponseModel_tokens1 copyWith(
      {String? accessToken, String? refreshToken}) {
    return RegisterResponseModel_tokens1(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }
}

@NowaGenerated()
class RegisterResponseModel1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterResponseModel1({this.user, this.tokens});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterResponseModel1.fromJson(
      {required Map<String, dynamic> json}) {
    return RegisterResponseModel1(
        user: RegisterResponseModel_user1.fromJson(json: json['user'] ?? {}),
        tokens:
            RegisterResponseModel_tokens1.fromJson(json: json['tokens'] ?? {}));
  }

  final RegisterResponseModel_user1? user;

  final RegisterResponseModel_tokens1? tokens;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RegisterResponseModel1 copyWith(
      {RegisterResponseModel_user1? user,
      RegisterResponseModel_tokens1? tokens}) {
    return RegisterResponseModel1(
        user: user ?? this.user, tokens: tokens ?? this.tokens);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'user': user?.toJson(), 'tokens': tokens?.toJson()};
  }
}

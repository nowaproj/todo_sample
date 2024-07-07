import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class RegisterModeluser {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterModeluser(
      {this.id, this.email, this.firstName, this.lastName, this.displayName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterModeluser.fromJson({required Map<String, dynamic> json}) {
    return RegisterModeluser(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      displayName: json['displayName'],
    );
  }

  final String? id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? displayName;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RegisterModeluser copyWith(
      {String? id,
      String? email,
      String? firstName,
      String? lastName,
      String? displayName}) {
    return RegisterModeluser(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      displayName: displayName ?? this.displayName,
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
    };
  }
}

@NowaGenerated()
class RegisterModeltokens {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterModeltokens({this.accessToken, this.refreshToken});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterModeltokens.fromJson({required Map<String, dynamic> json}) {
    return RegisterModeltokens(
        accessToken: json['accessToken'], refreshToken: json['refreshToken']);
  }

  final String? accessToken;

  final String? refreshToken;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RegisterModeltokens copyWith({String? accessToken, String? refreshToken}) {
    return RegisterModeltokens(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }
}

@NowaGenerated()
class RegisterModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterModel({this.user, this.tokens});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RegisterModel.fromJson({required Map<String, dynamic> json}) {
    return RegisterModel(
        user: RegisterModeluser.fromJson(json: json['user'] ?? {}),
        tokens: RegisterModeltokens.fromJson(json: json['tokens'] ?? {}));
  }

  final RegisterModeluser? user;

  final RegisterModeltokens? tokens;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RegisterModel copyWith(
      {RegisterModeluser? user, RegisterModeltokens? tokens}) {
    return RegisterModel(
        user: user ?? this.user, tokens: tokens ?? this.tokens);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'user': user?.toJson(), 'tokens': tokens?.toJson()};
  }
}

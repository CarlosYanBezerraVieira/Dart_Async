import 'dart:convert';

import 'package:dart_async/modelos/curso/user_type_mais_facil.dart';

class UserMaisFacil {
  final String id;
  final String name;
  final String userName;
  final List<UserTypeMaisFacil> userTypes;
  UserMaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserMaisFacil(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: List<UserTypeMaisFacil>.from(
          map['user_types']?.map((x) => UserTypeMaisFacil.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserMaisFacil.fromJson(String source) =>
      UserMaisFacil.fromMap(json.decode(source));
}

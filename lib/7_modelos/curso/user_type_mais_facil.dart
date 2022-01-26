import 'dart:convert';

class UserTypeMaisFacil {
  final String id;
  final String userId;
  final String name;
  UserTypeMaisFacil({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypeMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserTypeMaisFacil(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypeMaisFacil.fromJson(String source) =>
      UserTypeMaisFacil.fromMap(json.decode(source));
}

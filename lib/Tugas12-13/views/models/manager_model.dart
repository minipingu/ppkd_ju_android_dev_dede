import 'dart:convert';

class ManagerModel {
  final int? id;
  final String name;
  final String email;
  final String phone;
  final String password;
  final String city;
  ManagerModel({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.city,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    result.addAll({'name': name});
    result.addAll({'email': email});
    result.addAll({'phone': phone});
    result.addAll({'password': password});
    result.addAll({'city': city});

    return result;
  }

  factory ManagerModel.fromMap(Map<String, dynamic> map) {
    return ManagerModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      password: map['password'] ?? '',
      city: map['city'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ManagerModel.fromJson(String source) =>
      ManagerModel.fromMap(json.decode(source));
}

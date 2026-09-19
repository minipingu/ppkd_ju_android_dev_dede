import 'dart:convert';

class ManagerModels {
  final int? id;
  final String name;
  final String email;
  final String phone;
  final String password;
  final String city;
  ManagerModels({
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

  factory ManagerModels.fromMap(Map<String, dynamic> map) {
    return ManagerModels(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      password: map['password'] ?? '',
      city: map['city'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ManagerModels.fromJson(String source) =>
      ManagerModels.fromMap(json.decode(source));
}

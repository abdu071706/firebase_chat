import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? name;
  String? email;
  String? password;
  String? id;

  UserModel({
    this.name = '',
    this.email = '',
    this.password,
    this.id = '',
  });
  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'id': id,
      };
}

final UserModel userModel = UserModel();

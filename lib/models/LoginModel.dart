// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String ? identifiant;
  String ? password;
  String ? token;

  LoginModel({
    this.identifiant,
    this.password,
    this.token,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    identifiant: json["identifiant"],
    password: json["password"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "identifiant": identifiant,
    "password": password,
    "token": token,
  };
}

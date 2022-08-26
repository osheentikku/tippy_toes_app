import 'package:flutter/material.dart';

class User {
  String username;
  String name;
  String email;
  String phone;
  late bool admin;

  User(
    this.username,
    this.name,
    this.email,
    this.phone,
  );

  //formatting for firebase
  Map<String, dynamic> toJson() =>{
    'username' : username,
    'name' : name,
    'email' : email,
    'phone' : phone,
    'admin' : admin,
  };
}
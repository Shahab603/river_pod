//it has only 2 properties, but in a big app it can vary therefore stateprovider doesnt suit here
//Though stat change is possible through stateprovider but the logic will be lying around widgets

import 'package:flutter_riverpod/flutter_riverpod.dart';
// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);
//app.quicktype.io

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  User copyWith({String? name, int? age}) =>
      User(name: name ?? this.name, age: age ?? this.age);

  factory User.fromJson(Map<String, dynamic> json) =>
      User(name: json["Name"], age: json["age"]);

  Map<String, dynamic> toJson() => {"Name": name, "age": age};
}

class UserNotifier extends StateNotifier<User> {
  // all methods to change the properties of the user class goes here to one place

  UserNotifier(super.state);

  void updateName(String n) {
    state = state.copyWith(name: n);
    // state = User(name: n, age: state.age); //This is possible for short data (properties)
  }

  void updateAge(int a){
    state = state.copyWith(age: a);
  }
}

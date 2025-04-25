import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/home_screen.dart';
import 'package:state_management_riverpod_app/user.dart';

// there are many providers:
//1- Provider => (Read only widget cannot update state. it provide data to other widgets or providers)
//2- StateProvider => (for changing the state) simple values i.e., string, int etc
//3- StateNotifier & StateNotifierProvider =>

// 2- final nameProvider = Provider<String>((ref) => 'Shahab Nadeem');
// 3- final nameProvider = StateProvider<String?>((ref) => '');
final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(User(name: '', age: 0)),
);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomeScreen(title: 'Riverpod'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/home_screen.dart';

// there are many providers:
//1- Provider (Read only widget cannot update state. it provide data to other widgets or providers)
//2- StateProvider (for changing the state)

// final nameProvider = Provider<String>((ref) => 'Shahab Nadeem'); 
final nameProvider = StateProvider<String?>((ref) => '');


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

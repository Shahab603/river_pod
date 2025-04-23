import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/home_screen.dart';


// there are many providers:
//1- Provider (Read only widget cannot update state. it provide data to other widgets or providers)

final nameProvider = Provider<String>((ref)=>'Shahab Nadeem');
final marksProvider = Provider<int>((ref)=>56);

void main() {
  runApp( ProviderScope(child: MyApp()));
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


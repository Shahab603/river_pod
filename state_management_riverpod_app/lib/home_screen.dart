import 'package:flutter/material.dart';
import 'package:state_management_riverpod_app/constants/app_colors.dart';
import 'package:state_management_riverpod_app/constants/text_style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  void onSubmitname(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateName(value);
    // 03- ref.read(nameProvider.notifier).update((state)=>value);
  }

  void onSubmitAge (WidgetRef ref, String value){
    ref.read(userProvider.notifier).updateAge(int.parse(value),);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    // 03- final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyles.heading),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(onSubmitted: (value) => onSubmitname(ref, value)),
            SizedBox(height: 18),
            TextField(onSubmitted: (value) => onSubmitAge(ref, value)),
            SizedBox(height: 18),
            Text(user.name, style: TextStyles.heading),
            Text(user.age.toString(), style: TextStyles.heading),
          ],
        ),
      ),
    );
  }
}

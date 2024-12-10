import 'package:flutter/material.dart';
import 'package:tasksheet_firebase/word_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WordScreen(),
    );
  }
}

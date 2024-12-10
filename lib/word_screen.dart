import 'package:flutter/material.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({super.key});

  @override
  WordScreenState createState() => WordScreenState();
}

int currentIndex = 0;

class WordScreenState extends State<WordScreen> {
  final List<String> words = [
    'Bober',
    'Piwo',
    'BrumBrum',
    'LuLe',
    'VivonZulul'
  ];

  void otherWord() {
    setState(
      () {
        currentIndex = (currentIndex + 1) % words.length;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasksheet Firebase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              words[currentIndex],
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: otherWord,
              child: const Text('Näxt Bober'),
            ),
          ],
        ),
      ),
    );
  }
}

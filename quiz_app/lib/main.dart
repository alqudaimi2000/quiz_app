import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: QuizPage()),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

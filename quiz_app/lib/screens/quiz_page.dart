import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/results_page.dart';
import 'start_page.dart';
import 'question_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String page = 'start';
  final List<String> selectedAnswers = [];
  void changePage() {
    setState(() {
      page = 'question';
    });
  }

  void restartQuiz() {
    setState(() {
      page = 'start';
      selectedAnswers.clear();
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        page = 'result';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 3, 18, 233), // Deep Purple
              Color(0xFF9C27B0), // Purple
              Color.fromARGB(255, 217, 0, 255), // Light Purple
            ],
          ),
        ),
        child:
            page == 'start'
                ? StartPage(changePage: changePage)
                : page == 'result'
                ? ResultsPage(
                  selectedAnswers: selectedAnswers,
                  restartQuiz: restartQuiz,
                )
                : QuestionPage(chooseAnswer: chooseAnswer),
      ),
    );
  }
}

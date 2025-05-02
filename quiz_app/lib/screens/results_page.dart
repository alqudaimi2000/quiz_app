import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_summary.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.selectedAnswers,
    required this.restartQuiz,
  });
  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'questionIndex': i + 1,
        'question': questions[i].text,
        'correctAnswer': questions[i].answers[0],
        'userAnswer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int score =
        summaryData
            .where((data) => data['userAnswer'] == data['correctAnswer'])
            .length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered ${(score / questions.length * 100).toStringAsFixed(0)}% of questions correctly!',
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => {restartQuiz()},
            child: const Text(
              'Restart Quiz',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

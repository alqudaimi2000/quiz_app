import 'package:flutter/material.dart';
import '../widgets/answer_button.dart';
import '../data/questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key, required this.chooseAnswer});
  final void Function(String answer) chooseAnswer;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      widget.chooseAnswer(selectedAnswer);
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map(
            (answer) => AnswerButton(
              answerText: answer,
              onTap: () => answerQuestion(answer),
            ),
          ),
        ],
      ),
    );
  }
}

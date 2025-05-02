import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartPage extends StatelessWidget {
  final Function changePage;
  const StartPage({super.key, required this.changePage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', // Make sure to add an image to your assets folder
            width: 300,
            height: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            'Are You Ready To Test Yourself?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              HapticFeedback.lightImpact();
              changePage();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Start Quiz.',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF6A1B9A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

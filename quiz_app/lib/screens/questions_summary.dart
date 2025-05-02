import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData
                  .map(
                    (data) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 33, 1, 95),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color:
                                  data['userAnswer'] == data['correctAnswer']
                                      ? Colors.green
                                      : Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              ((data['questionIndex'] as int)).toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data['question'] as String,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Your answer: ${data['userAnswer']}',
                                  style: const TextStyle(
                                    color: Color.fromARGB(200, 255, 255, 255),
                                  ),
                                ),
                                Text(
                                  'Correct answer: ${data['correctAnswer']}',
                                  style: const TextStyle(
                                    color: Color.fromARGB(200, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}

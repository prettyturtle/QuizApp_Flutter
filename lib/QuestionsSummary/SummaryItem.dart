import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/QuestionsSummary/QuestionIdentifier.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> summaryData;

  const SummaryItem({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    final int questionIndex = summaryData["question_index"] as int;
    final bool isCorrect =
        summaryData["user_answer"] == summaryData["correct_answer"];
    final String question = summaryData["question"] as String;
    final String userAnswer = summaryData["user_answer"] as String;
    final String correctAnswer = summaryData["correct_answer"] as String;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: questionIndex,
            isCorrectAnswer: isCorrect,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: GoogleFonts.jua(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  userAnswer,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252)),
                ),
                Text(
                  correctAnswer,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

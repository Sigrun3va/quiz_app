import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> data;

  const SummaryItem(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final questionIndex = data['question_index'] as int;
    final questionText = data['question'] as String;
    final correctAnswer = data['correct_answer'] as String;
    final userAnswer = data['user_answer'] as String;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: const Color.fromARGB(255, 87, 28, 52),
      child: ListTile(
        leading: const Icon(Icons.question_answer, color: Colors.white),
        title: Text(
          'Question ${questionIndex + 1}',
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              questionText,
              style: GoogleFonts.lato(fontSize: 16, color: Colors.white),
            ),
            Text(
              'Your Answer: $userAnswer',
              style: GoogleFonts.lato(fontSize: 16, color: Colors.blue),
            ),
            Text(
              'Correct Answer: $correctAnswer',
              style: GoogleFonts.lato(
                  fontSize: 16, color: userAnswer == correctAnswer ? Colors.green : Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}


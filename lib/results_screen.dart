import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final void Function() onRestart;
  final List<String> chosenAnswers;

  const ResultsScreen({Key? key, required this.chosenAnswers, required this.onRestart})
      : super(key: key);

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data)
    => data['user_answer'] == data['correct_answer']).length;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 138, 42, 88),
              Color.fromARGB(255, 215, 61, 133),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Score: $numCorrectQuestions / $numTotalQuestions',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: onRestart,
                icon: const Icon(Icons.restart_alt),
                label: const Text('Restart Quiz'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: const Color.fromARGB(255, 138, 42, 88),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(224, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          Text(
            'ARe YoU ReaDY tO AnSWEr SomE QUeStioNs?!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 245, 202, 207),
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.tag_faces),
            label: const Text('Press to Begin!'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: const Color.fromARGB(255, 138, 42, 88),
            )
          ),
        ],
      ),
    );
  }
}

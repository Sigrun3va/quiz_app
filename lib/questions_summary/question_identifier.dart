import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  final String identifier;

  const QuestionIdentifier({Key? key, required this.identifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        identifier,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

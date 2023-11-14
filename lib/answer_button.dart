import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onPress});

  final String answerText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor: const Color.fromARGB(255, 87, 28, 52),
          foregroundColor: Colors.white,
          shape: const ContinuousRectangleBorder()),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

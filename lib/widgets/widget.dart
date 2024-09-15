import 'package:flutter/material.dart';

class AnswerTextWidget extends StatelessWidget {
  final String text;
  final String correctAnswer;
  final bool isSelected;
  final bool showCorrectAnswer;
  final bool isClickable;
  final VoidCallback onTap;

  const AnswerTextWidget({
    super.key,
    required this.text,
    required this.correctAnswer,
    required this.isSelected,
    required this.showCorrectAnswer,
    required this.isClickable,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isClickable ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? (text == correctAnswer ? Colors.green : Colors.red)
              : (showCorrectAnswer && text == correctAnswer
                  ? Colors.green
                  : Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

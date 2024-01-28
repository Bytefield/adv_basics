import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.text,
    required this.getId,
  });

  final String text;
  final void Function() getId;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: getId,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 60,
          vertical: 10,
        ),
        foregroundColor: const Color.fromARGB(255, 4, 12, 75),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(text),
    );
  }
}

import 'package:flutter/material.dart';

void onPressed() {
  print('button pressed!');
}

class DefaultButton extends StatelessWidget {
  final String buttonText;

  const DefaultButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_circle_right_outlined,
      ),
      label: Text(buttonText),
    );
  }
}

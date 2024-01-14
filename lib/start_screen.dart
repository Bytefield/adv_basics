import 'package:adv_basics/default_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.75,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: DefaultButton(
              buttonText: 'Start Quiz',
            ),
          )
        ],
      ),
    );
  }
}

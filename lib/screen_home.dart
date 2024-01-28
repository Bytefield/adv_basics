import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome(
    this.switchScreen, {
    super.key,
  });

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(99, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Some text here',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed: switchScreen,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_forward),
              label: const Text(
                'Start Quiz',
              )),
        ],
      ),
    );
  }
}

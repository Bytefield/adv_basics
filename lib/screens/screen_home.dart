import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "Papi's Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: OutlinedButton.icon(
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_forward),
              label: const Text("some text"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void onPressed() {
  print('button pressed!');
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
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
                child: TextButton(
                  onPressed: onPressed,
                  child: Text('Start Quiz'),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

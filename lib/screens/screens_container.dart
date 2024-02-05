import 'package:adv_basics/screens/screen_home.dart';
import 'package:adv_basics/screens/screen_questions.dart';
import 'package:flutter/material.dart';

class ScreensContainer extends StatefulWidget {
  const ScreensContainer({super.key});

  @override
  State<ScreensContainer> createState() => _ScreensContainerState();
}

class _ScreensContainerState extends State<ScreensContainer> {
  String activeScreen = 'screen_home';

  switchScreen() {
    setState(() {
      activeScreen = 'screen_questions';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = ScreenHome(switchScreen);

    if (activeScreen == 'screen_questions') {
      screenWidget = const ScreenQuestions();
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Title"),
          backgroundColor: Color(0xff00072c),
          foregroundColor: Colors.white,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xff0a7ed4),
                Color(0xff00072c),
              ],
              stops: [0, 1],
              center: Alignment.bottomCenter,
              radius: 1,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

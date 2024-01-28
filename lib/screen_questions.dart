import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class ScreenQuestions extends StatefulWidget {
  const ScreenQuestions({super.key});

  @override
  State<ScreenQuestions> createState() => _ScreenQuestionsState();
}

class _ScreenQuestionsState extends State<ScreenQuestions> {
  getId() {}

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(
              text: answer,
              getId: getId,
            );
          }),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  const MainBackground(
    this.content, {
    super.key,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xff0a7ed4),
            Color(0xff00072c),
          ],
          stops: [0, 1],
          center: Alignment.bottomCenter,
          radius: 1.5,
        ),
      ),
      child: content,
    );
  }
}

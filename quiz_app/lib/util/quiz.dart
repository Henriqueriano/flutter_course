import 'package:flutter/material.dart';
import 'package:quiz_app/util/custom_gradient.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: CustomGradient(
          colors: [
            Color.fromARGB(255, 72, 0, 144),
            Color.fromARGB(255, 97, 0, 161),
          ],
        ),
      ),
    );
  }
}

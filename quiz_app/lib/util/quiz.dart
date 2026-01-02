import 'package:flutter/material.dart';
import 'package:quiz_app/util/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
	activeScreen = StartScreen(switchScreen);
	super.initState();
  }

  void switchScreen(Widget screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Container(
    decoration: BoxDecoration(
		gradient: LinearGradient(
					colors:	[
						const Color.fromARGB(255, 72, 0, 144),
						const Color.fromARGB(255, 97, 0, 161),
						],
					begin: Alignment.topLeft,
					end: Alignment.bottomRight,
					),
					),
		child: Center(child: activeScreen)
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/util/question_screen.dart';

class StartScreen extends StatelessWidget {
	const StartScreen(this.startQuiz, {super.key});
	final void Function(Widget) startQuiz;

	@override
		Widget build(BuildContext context) {
			return Column(
					spacing: 30,
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
					Image.asset(
						'assets/images/quiz-logo.png',
						width: 300,
						color: const Color.fromARGB(150, 255, 255, 255),
						),
					const Text(
						'Learn Flutter the fun way!',
						style: TextStyle(
							fontSize: 24,
							color: const Color.fromARGB(255,255,255,255),
							fontWeight: FontWeight.bold,
							),
						),
					OutlinedButton.icon(
						onPressed: () {
						startQuiz(QuestionScreen(startQuiz));},
						style: OutlinedButton.styleFrom(
							foregroundColor: const Color.fromARGB(255,255,255,255),
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.circular(10),
								),
							),
						icon: const Icon(Icons.play_arrow),
						label: const Text('Start Quiz!'),
						),
					],
					);
		}
}

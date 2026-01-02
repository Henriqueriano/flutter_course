import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/util/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/util/start_screen.dart';
import 'package:quiz_app/util/results_screen.dart';

class QuestionScreen extends StatefulWidget {
				const QuestionScreen(this.changeScreen, {super.key});
				final Function(Widget) changeScreen;

				@override
				State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
				int currentQuestionIndex = 0;
				List<String> selectedAnswers = [];
				void chooseAnswer(String answer) {
								selectedAnswers.add(answer);
				}

				void changeQuestion(String answer) {
								if (selectedAnswers.length == questions.length-1) 
								{
												widget.changeScreen(ResultsScreen(selectedAnswers, function: widget.changeScreen));
								}

								setState(() 
								{
												chooseAnswer(answer);
												currentQuestionIndex++;
								});
												}
				@override
								Widget build(BuildContext context) {
												QuizQuestion currentQuestion = questions[currentQuestionIndex];
												return SizedBox(
																				width: double.infinity,
																				child: Container(
																								margin: EdgeInsets.all(20),
																								child: Column(
																												spacing: 20,
																												crossAxisAlignment: CrossAxisAlignment.stretch,
																												mainAxisAlignment: MainAxisAlignment.center,
																												children: [
																												Text(currentQuestion.text, textAlign: TextAlign.center,
																																style: GoogleFonts.lato(
																																color: const Color.fromARGB(255,201,153,251),
																																fontSize: 24,
																																fontWeight: FontWeight.bold)),
																												...currentQuestion.getShuffledAnswers().map((item) {
																																return AnswerButton(answer: item, answerAction: () {changeQuestion(item);});
																																})
																												]
																												))
																			 );
								}
}

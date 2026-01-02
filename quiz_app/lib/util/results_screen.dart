import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/util/questions_summary.dart';
import 'package:quiz_app/util/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
				final void Function(Widget) function;
				final List<String> selectedAnswes;
				const ResultsScreen(this.selectedAnswes, {super.key, required this.function});

				List<Map<String, Object>> getSummaryData() {
								final List<Map<String, Object>> summaryData = [];
								for (var i = 0; i < selectedAnswes.length -1 ; i++) {
												summaryData.add({
												'question_index': i,
												'question': questions[i].text,
												'correct_answer':questions[i].answers[0],
												'user_answer': selectedAnswes[i]
												});
				}
				 return summaryData;
				}

				@override
				Widget build(BuildContext context)
				{
								final List<Map<String, Object>> summaryData = getSummaryData();

								final int totalCorrectAnswers = summaryData.where((item) 
								{
											return	item['user_answer'] == item['correct_answer'];
								}).length;

								final int totalQuestions = selectedAnswes.length;
								return SizedBox(
												width: double.infinity,
												child: Container(
																margin: const EdgeInsets.all(40),
																child: Column(
																				mainAxisAlignment: MainAxisAlignment.center,
																				children: [
																								Text('You answered ${totalCorrectAnswers} ou of ${totalQuestions} questions!',
																								style: GoogleFonts.lato(
																										color: const Color.fromARGB(255,201,153,251),
																										fontSize: 24,
																										fontWeight: FontWeight.bold
																								)),
																								const SizedBox(height: 50),
																								QuestionsSummary(summaryData: summaryData),
																								const SizedBox(height: 50),
																								OutlinedButton.icon(
																												onPressed: () { function(StartScreen(function));}, // 'Gambiarra' alert, I tryed this by myself.
																												style: OutlinedButton.styleFrom(
																												foregroundColor: const Color.fromARGB(255,255,255,255),
																												shape: RoundedRectangleBorder(
																												borderRadius: BorderRadius.circular(10),
																												),
																												),
																												icon: const Icon(Icons.restart_alt),
																												label: const Text('Restart Quiz!')
																												),
																				]
																				),
																				),
																				);
				}
}

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
				final String answer;
				final void Function() answerAction;
				const AnswerButton({super.key, required this.answer, required this.answerAction, });
				

				@override
				Widget build(BuildContext context) {
								return ElevatedButton(
												onPressed: answerAction,
												style: ElevatedButton.styleFrom(
																padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
																backgroundColor: const Color.fromARGB(255,33,1,95),
																foregroundColor: const Color.fromARGB(255,255,255,255),
																shape: RoundedRectangleBorder(
																				 borderRadius: BorderRadius.circular(10)
																),
												),
												child: Text(answer, textAlign: TextAlign.center),
									);
								}

}

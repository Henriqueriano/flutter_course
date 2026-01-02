import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Circle extends StatelessWidget {
				final bool correctAnswer;
				final String text;
				const Circle({super.key, required this.text, required this.correctAnswer});

				@override
				Widget build(BuildContext ctx) {
								return Container(
												width: 50.00,
												height: 50.00,
												decoration: BoxDecoration(
												shape: BoxShape.circle,
												border: correctAnswer ? Border.all(color: const Color.fromARGB(255,147,255,147), width: 2) : Border.all(color: const Color.fromARGB(255,255,186,186), width: 2),
												color: correctAnswer ? Colors.green : Colors.red),
												child: Center( child: Text(text, style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255,255,255,255)))),
												);
				}
}

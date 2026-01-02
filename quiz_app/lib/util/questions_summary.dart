import 'package:flutter/material.dart';
import 'package:quiz_app/util/circle.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
				final double size = 20.0;	
				final List<Map<String, Object>> summaryData;
				const QuestionsSummary({super.key, required this.summaryData});

				@override
				Widget build(BuildContext ctx) {
								return SizedBox(
												height: 300,
												child: SingleChildScrollView(
												child: Column(
												children: summaryData.map((data) 
												{
																return Row(
																				children: [
																								Circle(
																								text: ((data['question_index'] as int) + 1).toString(),
																								correctAnswer: data['user_answer'] as String == data['correct_answer'] as String),
																								Expanded(
																								child: Column(
																								mainAxisAlignment: MainAxisAlignment.start,
																								children: [
																												Text(data['question'] as String, style: GoogleFonts.lato(color: const Color.fromARGB(255,255,255,255), fontSize: size)),
																												SizedBox(height: 10),
																												Text(data['user_answer'] as String,
																												style: GoogleFonts.lato( color: data['user_answer'] as String == data['correct_answer'] as String ? Colors.green : Colors.red, fontSize: size, fontWeight: FontWeight.bold)),
																												Text(data['correct_answer'] as String, style: GoogleFonts.lato(fontSize: size, fontWeight: FontWeight.bold, color: Colors.green)),
																												SizedBox(height: 50),
																												]
																												))],									
																				);
												})
												.toList(),
								)));
								}
}

import 'package:flutter/material.dart';
import 'package:quiz_app/util/main_column.dart';

class CustomGradient extends StatelessWidget {
  final List<Color> colors;
  const CustomGradient({super.key, required this.colors});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: MainColumn()),
    );
  }
}

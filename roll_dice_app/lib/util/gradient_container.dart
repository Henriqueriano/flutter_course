import 'package:flutter/material.dart';
import 'package:roll_dice_app/util/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final AlignmentGeometry topAlignment = Alignment.topLeft;
  final AlignmentGeometry bottomAlignment = Alignment.bottomRight;
  const GradientContainer({super.key, required this.colors});

  @override
  Widget build(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: topAlignment,
          end: bottomAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}

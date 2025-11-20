import 'package:flutter/material.dart';
import 'dart:math';

final Random random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String imageSrc = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      imageSrc = 'assets/images/dice-${random.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(imageSrc, width: 200),
        TextButton(
          onPressed: () => rollDice(),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice!'),
        ),
      ],
    ),
  );
}

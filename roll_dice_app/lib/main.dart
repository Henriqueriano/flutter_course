import 'package:flutter/material.dart';
import 'package:roll_dice_app/util/gradient_container.dart';

// program entry point btw:
void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            const Color.fromARGB(255, 25, 2, 80),
            const Color.fromARGB(255, 45, 7, 98),
          ],
        ),
      ),
    );
  }
}

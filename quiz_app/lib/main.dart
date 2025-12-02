import 'package:flutter/material.dart';
import 'package:quiz_app/util/quiz.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return Quiz();
  }
}

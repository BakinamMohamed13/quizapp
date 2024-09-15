import 'package:flutter/material.dart';
import 'package:quizapp/view/congrat.dart';
import 'package:quizapp/view/homescreen.dart';
import 'package:quizapp/view/quiz.dart';


void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        QuizPage.routeName: (context) => QuizPage(),
        CongratulationPage.routeName: (context) => CongratulationPage(),
      },
    );
  }
}

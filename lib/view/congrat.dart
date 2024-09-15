import 'package:flutter/material.dart';
import 'package:quizapp/view/homescreen.dart';
import 'package:quizapp/widgets/box.dart';
class CongratulationPage extends StatelessWidget {
  static const routeName = 'congratsPage';

  const CongratulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    String name = arguments['name'];
    int result = arguments['result'];
    int totalAnswers = arguments['totalAnswers'];
    return Scaffold(
      backgroundColor: const Color(0xff86948F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomBox(
              width: 290,
              height: 40,
              widget: Text(
                '$result/$totalAnswers',
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomePage.routeName,
                    arguments: name);
              },
              text: 'Hello $name Your Score is',
              headerText: result != 0
                  ? 'CONGRATULATIONS!!!!'
                  : "Sorry You can always try again );",
              buttonText: 'FINISH',
              topPositionOfHeader: -24,
              rightPositionOfHeader: 40,
              headerTextFontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

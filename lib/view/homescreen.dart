import'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:quizapp/view/quiz.dart';
import 'package:quizapp/widgets/box.dart';
import 'package:quizapp/widgets/button.dart';

class HomePage extends StatelessWidget {
  static const routeName = "homePage";
  String? name;
  GlobalKey<FormState> globalKey = GlobalKey();

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff86948F),
      body: Form(
        key: globalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'QUIZ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              ),
            ),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                'image/Ellipse 1.png',
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomBox(
              headerTextFontSize: 27,
              rightPositionOfHeader: 72,
              topPositionOfHeader: -25,
              width: 220,
              height: 40,
              headerText: "Welcome",
              buttonText: 'SUBMIT',
              widget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  validator: (value) {
                    name = value;
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                    filled: true,
                    fillColor: Color(0xffD9D9D9),
                    isCollapsed: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.transparent,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              text: 'Please Enter your Name',
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  Navigator.pushNamed(context, QuizPage.routeName,
                      arguments: name);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

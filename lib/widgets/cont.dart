import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.headerText,
    required this.height,
    required this.weight,
    required this.headerTextFontSize,
  });

  final String headerText;
  final double height;
  final double weight;
  final double headerTextFontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      decoration: BoxDecoration(
        color: const Color(0xffB8E893),
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: Text(
        headerText,
        style: TextStyle(
          fontSize: headerTextFontSize,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

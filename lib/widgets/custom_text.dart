import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color fontColor;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: fontColor, fontSize: fontSize),
    );
  }
}

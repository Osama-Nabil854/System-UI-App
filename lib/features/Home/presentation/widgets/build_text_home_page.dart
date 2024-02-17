import 'package:flutter/material.dart';
import 'package:system/Core/utils/app_colors.dart';

class TextHomePageWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const TextHomePageWidget({
    super.key,
    required this.text,
    this.fontSize = 25.0,
    this.color = AppColors.lightPurple,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

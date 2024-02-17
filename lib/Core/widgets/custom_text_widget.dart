import 'package:flutter/material.dart';
import 'package:system/Core/utils/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const CustomTextWidget({
    super.key,
    required this.text,
    this.color = AppColors.lightPurple,
    this.fontSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'PokemonSolid',
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}

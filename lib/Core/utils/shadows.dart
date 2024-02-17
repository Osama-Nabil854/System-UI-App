import 'package:flutter/material.dart';
import 'package:system/Core/utils/app_colors.dart';

List<BoxShadow> lightsShadowsIcons = [
  const BoxShadow(
    color: AppColors.backGroundcolor,
    blurRadius: 20,
    offset: Offset(0, 20),
  ),
  const BoxShadow(
    color: AppColors.backGroundcolor,
    blurRadius: 20,
    offset: Offset(0, -20),
  ),
  const BoxShadow(
    color: AppColors.backGroundcolor,
    blurRadius: 20,
    offset: Offset(20, 0),
  ),
  const BoxShadow(
    color: AppColors.backGroundcolor,
    blurRadius: 20,
    offset: Offset(-20, 0),
  ),
];

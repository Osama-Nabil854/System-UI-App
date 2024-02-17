import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelTexthintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextFieldWidget({
    super.key,
    required this.labelTexthintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.lightPurple,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.lightPurple,
            ),
          ),
          isDense: true,
          labelText: labelTexthintText,
          hintText: labelTexthintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          labelStyle: const TextStyle(
            color: AppColors.lightPurple,
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: AppColors.lightPurple,
          suffixIcon: suffixIcon,
          suffixIconColor: AppColors.lightPurple,
        ),
      ),
    );
  }
}

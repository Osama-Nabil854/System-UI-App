import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';

class BuildPrivacyPolicyWidget extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  const BuildPrivacyPolicyWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          const Text(
            'I Agree with privacy and policies',
            style: TextStyle(
              color: AppColors.lightPurple,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

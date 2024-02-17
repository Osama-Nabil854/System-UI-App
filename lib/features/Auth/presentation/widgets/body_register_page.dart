import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/widgets/custom_buttom.dart';
import 'package:system/Core/widgets/custom_text_widget.dart';
import 'package:system/features/Auth/presentation/widgets/build_privacy_widget.dart';

import '../../../../Core/widgets/custom_textfield.dart';

class BoDyRegisterPage extends StatelessWidget {
  const BoDyRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.backGroundcolor,
            Colors.white,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextWidget(
              text: 'SignUp',
              fontSize: 70,
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 100.h,
              child: const Row(
                children: [
                  Expanded(
                    child: CustomTextFieldWidget(
                      labelTexthintText: 'First Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      labelTexthintText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
            const CustomTextFieldWidget(
              labelTexthintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
            CustomTextFieldWidget(
              labelTexthintText: 'Password',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility),
              ),
            ),
            CustomTextFieldWidget(
              labelTexthintText: 'confirmPassword',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_off),
              ),
            ),
            BuildPrivacyPolicyWidget(
              value: true,
              onChanged: (value) {},
            ),
            SizedBox(height: 30.h),
            CustomButtomWidget(
              onPressed: () {},
              text: 'SIGNUP',
            ),
          ],
        ),
      ),
    );
  }
}

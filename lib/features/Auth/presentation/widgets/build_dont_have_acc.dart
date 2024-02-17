import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:system/Config/Routes/app_routes.dart';
import 'package:system/Core/utils/app_colors.dart';

class BuildDonHaveAccount extends StatelessWidget {
  const BuildDonHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              color: AppColors.lightPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: const TextStyle(
              color: Color.fromARGB(255, 6, 24, 132),
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, AppRoutes.SIGNUP_ROUTES);
              },
          ),
        ],
      ),
    );
  }
}

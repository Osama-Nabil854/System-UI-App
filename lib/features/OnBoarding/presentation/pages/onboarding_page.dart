import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system/features/OnBoarding/presentation/cubit/onboarding_cubit.dart';
import 'package:system/features/OnBoarding/presentation/widgets/build_body_onboarding_page_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingCubit(),
        child: const BodyOnBoardingPage(),
      ),
    );
  }
}

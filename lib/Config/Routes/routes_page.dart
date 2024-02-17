import 'package:flutter/material.dart';
import 'package:system/Config/Routes/app_routes.dart';
import 'package:system/features/App/presentation/pages/app_page.dart';
import 'package:system/features/Auth/presentation/pages/login_page.dart';
import 'package:system/features/Auth/presentation/pages/register_page.dart';
import 'package:system/features/Home/presentation/pages/feamale_teacher_page.dart';
import 'package:system/features/Home/presentation/pages/leacture_recording.dart';
import 'package:system/features/Home/presentation/pages/male_teacher.dart';
import 'package:system/features/OnBoarding/presentation/pages/onboarding_page.dart';

class RoutesPage {
  static Route ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.INITIAL_ROUTES:
        return _materialPageWidget(page: const OnBoardingPage());
      case AppRoutes.LOGIN_ROUTES:
        return _materialPageWidget(page: const LoginPage());
      case AppRoutes.SIGNUP_ROUTES:
        return _materialPageWidget(page: const RegisterPage());
      case AppRoutes.MALE_TEACHER:
        return _materialPageWidget(page: const MaleTeacherPage());
      case AppRoutes.FEMALE_TEACHER:
        return _materialPageWidget(page: const FemaleTeacherPage());
      case AppRoutes.LICTURE_RECOREDING:
        return _materialPageWidget(page: const LectureRecordingPage());
      case AppRoutes.APP:
        return _materialPageWidget(page: const AppPage());
      default:
        return defaultRoute(settings);
    }
  }

  static Route<dynamic> defaultRoute(RouteSettings settings) {
    return _materialPageWidget(
      page: Scaffold(
        appBar: AppBar(
          title: const Text('No Page Here'),
        ),
      ),
    );
  }
}

_materialPageWidget({required Widget page}) {
  return MaterialPageRoute(
    builder: (_) => page,
  );
}

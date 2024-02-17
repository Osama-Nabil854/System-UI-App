import 'package:flutter/material.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';
import 'package:system/features/Profile/presentation/widgets/body_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHomePageWidget(text: 'Profile'),
        centerTitle: true,
      ),
      body: const BoDyProfilePageWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/features/Home/presentation/widgets/build_body_home_page.dart';
import 'package:system/features/Home/presentation/widgets/build_drawe.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BuildDrawe(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.auto_awesome_mosaic_rounded,
                color: AppColors.lightPurple,
              ),
            );
          },
        ),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: const TextHomePageWidget(text: 'Home'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              color: AppColors.lightPurple,
            ),
          ),
        ],
      ),
      body: const BoDyHomePage(),
    );
  }
}

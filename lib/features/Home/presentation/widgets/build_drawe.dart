import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class BuildDrawe extends StatelessWidget {
  const BuildDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backGroundcolor,
      elevation: 0,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: AppColors.backGroundcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(Assets.assetsImagesBoy),
              ),
              accountName: TextHomePageWidget(
                text: 'Osama Nabil',
                fontSize: 15.sp,
                color: AppColors.backGroundcolor,
              ),
              accountEmail: TextHomePageWidget(
                text: 'osama@gmail.com',
                fontSize: 10.sp,
                color: AppColors.backGroundcolor,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Notifications',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Profile',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Settings',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Help',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Logout',
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

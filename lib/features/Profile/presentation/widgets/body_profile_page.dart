import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class BoDyProfilePageWidget extends StatelessWidget {
  const BoDyProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: const AssetImage(Assets.assetsImagesMan),
              radius: 50.r,
            ),
          ),
          TextHomePageWidget(
            text: 'Osama nabil',
            fontWeight: FontWeight.normal,
            fontSize: 20.sp,
          ),
          TextHomePageWidget(
            text: 'Flutter Developer',
            fontWeight: FontWeight.normal,
            fontSize: 20.sp,
          ),
          SizedBox(height: 5.h),
          ListTile(
            leading: const Icon(
              Icons.email,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Email@gmail.com',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: '+201147566910',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Egypt',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Age: 22',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Gender: Male',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.connecting_airports_outlined,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Country: Egypt',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Religion: Islam',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.check_circle_sharp,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Experience: 2 Years',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.workspace_premium_sharp,
              color: AppColors.lightPurple,
            ),
            title: TextHomePageWidget(
              text: 'Job: Flutter Developer',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: const Color.fromARGB(255, 4, 25, 143),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 4, 25, 143),
            ),
          ),
        ],
      ),
    );
  }
}

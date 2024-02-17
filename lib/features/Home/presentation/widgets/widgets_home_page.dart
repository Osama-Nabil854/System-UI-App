import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Config/Routes/app_routes.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/Core/utils/extension_app.dart';
import 'package:system/Core/widgets/custom_textfield.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

Widget buildtext({required String text, double font = 15}) {
  return TextHomePageWidget(
    text: text,
    fontSize: font,
  );
}

Widget buildSearch() {
  return const CustomTextFieldWidget(
    labelTexthintText: 'Search...',
  );
}

Widget buildContainer() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: AppColors.lightPurple,
      ),
    ),
    width: double.infinity,
    padding: EdgeInsets.all(5.sp),
    margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildtext(text: 'Welcome!'),
            buildtext(text: 'Let`s school your'),
            buildtext(text: 'Projects'),
          ],
        ),
        SizedBox(
          width: 100.w,
          height: 80.h,
          child: Image.asset(
            fit: BoxFit.cover,
            Assets.assetsImagesWelcomeSchool,
          ),
        ),
      ],
    ),
  );
}

Widget build4Square() {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 20.sp),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10.sp,
      crossAxisSpacing: 10.sp,
    ),
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: functions(context: context)[index],
        child: Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: AppColors.purple.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.lightPurple,
            ),
            image: DecorationImage(
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
              opacity: 0.5,
              image: AssetImage(images[index]),
            ),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: FittedBox(
              child: buildtext(
                text: titles[index],
                font: 15.sp,
              ),
            ),
          ),
        ),
      );
    },
  );
}

List<String> titles = [
  'Male Teacher',
  'Female Teacher',
  'My Lecturer',
  'Lecturer Recording',
];
List<String> images = [
  Assets.assetsImagesTeacher,
  Assets.assetsImagesWomen,
  Assets.assetsImagesClass,
  Assets.assetsImagesRecording,
];

List<void Function()?> functions({required BuildContext context}) {
  return [
    () {
      context.pushName(AppRoutes.MALE_TEACHER);
    },
    () {
      context.pushName(AppRoutes.FEMALE_TEACHER);
    },
    () {},
    () {
      context.pushName(AppRoutes.LICTURE_RECOREDING);
    },
  ];
}

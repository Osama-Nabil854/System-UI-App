import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Config/Routes/app_routes.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/Core/utils/extension_app.dart';
import 'package:system/Core/widgets/custom_buttom.dart';
import 'package:system/Core/widgets/custom_text_widget.dart';
import 'package:system/features/Auth/presentation/widgets/build_dont_have_acc.dart';

import '../../../../Core/widgets/custom_textfield.dart';

class BoDyLoginPage extends StatelessWidget {
  const BoDyLoginPage({super.key});

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
              text: 'SignIn',
              fontSize: 70,
            ),
            SizedBox(
              height: 40.h,
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
            SizedBox(height: 30.h),
            CustomButtomWidget(
              onPressed: () {
                context.pushNamedAndRemove(AppRoutes.APP);
              },
              text: 'LOGIN',
            ),
            SizedBox(height: 30.h),
            const IconsSignInWidget(),
            SizedBox(height: 30.h),
            const BuildDonHaveAccount(),
          ],
        ),
      ),
    );
  }
}

class IconsSignInWidget extends StatelessWidget {
  const IconsSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CircleAvatar(
            radius: 33.r,
            backgroundColor: AppColors.backGroundcolor.withOpacity(0),
            backgroundImage: AssetImage(images[index]),
          );
        },
      ),
    );
  }
}

List<String> images = [
  Assets.assetsImagesTwitter,
  Assets.assetsImagesGoogle,
  Assets.assetsImagesFacebook,
  Assets.assetsImagesInsta,
];

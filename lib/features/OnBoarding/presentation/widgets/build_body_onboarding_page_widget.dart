import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Config/Routes/app_routes.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/Core/utils/extension_app.dart';
import 'package:system/features/OnBoarding/presentation/cubit/onboarding_cubit.dart';

class BodyOnBoardingPage extends StatelessWidget {
  const BodyOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 100.w),
              decoration: BoxDecoration(
                color: AppColors.purple.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(999.w),
                  bottomRight: Radius.circular(9.w),
                  topLeft: Radius.circular(9.w),
                  topRight: Radius.circular(999.w),
                ),
              ),
            ),
            PageView(
              onPageChanged: (value) {
                BlocProvider.of<OnboardingCubit>(context).toggled(value);
              },
              controller: pageController,
              children: [
                _page(
                  index: 1,
                  context: context,
                  imagePath: Assets.assetsImagesMan,
                  title: 'First see Learning',
                  subStitle:
                      'Forget about a for of paper all knowledge in one learning',
                  pageController: pageController,
                ),
                _page(
                  index: 2,
                  context: context,
                  imagePath: Assets.assetsImagesReading,
                  title: 'First see Learning',
                  subStitle:
                      'Forget about a for of paper all knowledge in one learning',
                  pageController: pageController,
                ),
                _page(
                  index: 3,
                  context: context,
                  imagePath: Assets.assetsImagesBoy,
                  title: 'First see Learning',
                  subStitle:
                      'Forget about a for of paper all knowledge in one learning',
                  pageController: pageController,
                ),
              ],
            ),
            Positioned(
              bottom: 60.h,
              child: DotsIndicator(
                position: state.index,
                dotsCount: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                  color: AppColors.darkPurple,
                  activeColor: AppColors.lightPurple,
                  size: const Size.square(10.0),
                  activeSize: const Size(10.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _page({
    required int index,
    required BuildContext context,
    required String imagePath,
    required String title,
    required String subStitle,
    required PageController pageController,
  }) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.purple,
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            subStitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
              );
            } else {
              context.pushName(AppRoutes.LOGIN_ROUTES);
            }
          },
          child: Container(
            width: 150.w,
            height: 40.h,
            margin: EdgeInsets.only(
              top: 130.h,
              left: 25.w,
              right: 25.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.w),
              ),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.darkPurple,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  index <= 2 ? 'NEXT' : 'GET START',
                  style: TextStyle(
                    color: AppColors.purple,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                CircleAvatar(
                  radius: 13.w,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

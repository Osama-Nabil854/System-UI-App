import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/extension_app.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class LectureRecordingPage extends StatelessWidget {
  const LectureRecordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: const TextHomePageWidget(text: 'Lecture Recording'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: AppColors.lightPurple,
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(
                color: Colors.grey.shade200,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextHomePageWidget(
                    text: 'Lecture Recording',
                    color: AppColors.light10,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextHomePageWidget(
                    text: 'This is the lecture recording page',
                    color: AppColors.light10,
                    fontSize: 15.sp,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30.r,
                      child: Icon(
                        Icons.play_arrow,
                        color: AppColors.lightPurple,
                        size: 35.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

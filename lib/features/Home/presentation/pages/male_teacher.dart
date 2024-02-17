import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/assets.dart';
import 'package:system/Core/utils/extension_app.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class MaleTeacherPage extends StatelessWidget {
  const MaleTeacherPage({super.key});

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
        title: const TextHomePageWidget(text: 'Male Teacher'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextHomePageWidget(text: '20'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(Assets.assetsImagesMan),
              ),
              trailing: CircleAvatar(
                child: TextHomePageWidget(
                  text: '${index + 1}',
                  fontSize: 10.sp,
                ),
              ),
              title: TextHomePageWidget(
                text: 'M`r Osama Nabil',
                fontSize: 15.sp,
              ),
              subtitle: TextHomePageWidget(
                text: 'Quran and tajweed',
                fontSize: 12.sp,
              ),
            ),
          );
        },
      ),
    );
  }
}

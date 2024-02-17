import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/features/Home/presentation/widgets/widgets_home_page.dart';

class BoDyHomePage extends StatelessWidget {
  const BoDyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.sp, right: 5.sp, top: 5.sp),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                buildtext(text: 'HI, Osama', font: 25),
                buildtext(text: 'welcome back'),
                buildSearch(),
                buildContainer(),
                build4Square(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

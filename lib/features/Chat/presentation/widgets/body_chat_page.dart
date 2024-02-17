import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';

class BoDyChatPageWidget extends StatelessWidget {
  const BoDyChatPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5.sp, horizontal: 10.sp),
          decoration: BoxDecoration(
            color: AppColors.purple.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: ListTile(
            title: Text('Person ${index + 1}'),
            onTap: () {},
            leading: const Icon(Icons.person),
            trailing: Text(Random().nextInt(10).toString()),
            subtitle: const Text('the last message'),
          ),
        );
      },
    );
  }
}

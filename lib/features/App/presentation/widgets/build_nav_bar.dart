import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/Core/utils/shadows.dart';
import 'package:system/features/App/presentation/cubit/app_cubit.dart';
import 'package:system/features/Chat/presentation/pages/chat_page.dart';
import 'package:system/features/Home/presentation/pages/home_page.dart';
import 'package:system/features/Profile/presentation/pages/profile_page.dart';
import 'package:system/features/Search/presentation/pages/search_page.dart';

class BuildNavBarWidget extends StatelessWidget {
  const BuildNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(5.dg),
          margin: EdgeInsets.all(5.dg),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: NavigationBar(
              animationDuration: const Duration(seconds: 1),
              backgroundColor: AppColors.lightPurple,
              indicatorShape: const CircleBorder(
                eccentricity: 0.5,
              ),
              height: 60.h,
              selectedIndex: state.index,
              onDestinationSelected: (value) {
                BlocProvider.of<AppCubit>(context).changeINDEX(index: value);
              },
              destinations: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).changeINDEX(index: 0);
                  },
                  icon: Icon(
                    Icons.home,
                    color: AppColors.backGroundcolor,
                    shadows: state.index == 0 ? lightsShadowsIcons : [],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).changeINDEX(index: 1);
                  },
                  icon: Icon(
                    Icons.search,
                    color: AppColors.backGroundcolor,
                    shadows: state.index == 1 ? lightsShadowsIcons : [],
                  ),
                ),
                // CircleAvatar(
                //   radius: 30.r,
                //   child: GestureDetector(
                //     onTap: () {
                //       BlocProvider.of<AppCubit>(context).changeINDEX(index: 2);
                //     },
                //     child: CircleAvatar(
                //       backgroundColor: AppColors.purple,
                //       radius: 25.r,
                //       child: Icon(
                //         Icons.add,
                //         color: AppColors.backGroundcolor,
                //         shadows: state.index == 2 ? lightsShadowsIcons : [],
                //       ),
                //     ),
                //   ),
                // ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).changeINDEX(index: 2);
                  },
                  icon: Icon(Icons.chat,
                      color: AppColors.backGroundcolor,
                      shadows: state.index == 2 ? lightsShadowsIcons : []),
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context).changeINDEX(index: 3);
                  },
                  icon: Icon(Icons.person,
                      color: AppColors.backGroundcolor,
                      shadows: state.index == 3 ? lightsShadowsIcons : []),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Widget> pages = [
  const HomePage(),
  const SearchPage(),
  const ChatPage(),
  const ProfilePage(),
];

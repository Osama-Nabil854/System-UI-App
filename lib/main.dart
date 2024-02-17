import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:system/Config/Routes/routes_page.dart';
import 'package:system/Core/utils/app_colors.dart';
import 'package:system/features/App/presentation/cubit/app_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AppCubit()),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'System',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.lightPurple,
            ),
            fontFamily: 'Roboto',
            useMaterial3: true,
          ),
          onGenerateRoute: RoutesPage.ongenerateRoute,
          onUnknownRoute: RoutesPage.defaultRoute,
        ),
      ),
    );
  }
}

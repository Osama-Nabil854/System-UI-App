import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system/features/App/presentation/cubit/app_cubit.dart';
import 'package:system/features/App/presentation/widgets/build_nav_bar.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.index],
          bottomNavigationBar: const BuildNavBarWidget(),
        );
      },
    );
  }
}

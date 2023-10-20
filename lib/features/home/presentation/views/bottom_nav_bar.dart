import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/home/presentation/views/widgets/custom_bottom_nav.dart';

import '../manager/cubit/home_state.dart';


// ignore: must_be_immutable
class CustomBottomNav extends StatelessWidget {
   const CustomBottomNav({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<HomeCubit, HomeCubtState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit=HomeCubit.get(context);
        return  Scaffold(
        body:cubit.screens[cubit.selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomBottomNavBody(),
        ),
      );
      }
    );
  }
}
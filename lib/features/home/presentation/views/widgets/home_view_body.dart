import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal:15.0,vertical: 40),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const CustomAppBar(),
            const SizedBox(height: 40,),
            Text('Browse by Categories',
            style: AppStyle.textStyle15Black,)
          ]
        ),
      ),
    );
  }
}
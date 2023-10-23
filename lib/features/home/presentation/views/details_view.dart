import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:home_style/features/home/presentation/views/widgets/details_stack.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key,required this.title,required this.subTitle,required this.price,required this.description,required this.image});
  final String title;
  final String subTitle;
  final num price;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: stackColor,
        body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DetailsAppBar(),
            DetailsStack(
              title:title ,
              subTitle: subTitle,
              price:price ,
              description:description ,
              image:image ,
            ),
          ],
        ),
      ),
      ),
    );
  }
}

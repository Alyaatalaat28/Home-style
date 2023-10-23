import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(errMessage,
      textAlign: TextAlign.center,
      style:AppStyle.textStyle12Black ,),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width:306 ,
      height:56 ,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: TextButton(
        onPressed:(){} ,
        child:Text('LogOut',
            style: AppStyle.textStyle.copyWith(
              fontSize: 15,
            ),
        ),
      ),
    );
  }
}
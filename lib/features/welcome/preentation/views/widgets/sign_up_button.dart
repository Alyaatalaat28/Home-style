import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/style.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
        width:284 ,
        height:59 ,
        decoration: BoxDecoration(
          color:buttonColor ,
          borderRadius:BorderRadius.circular(20) ,
        ),
        child: TextButton(
        onPressed: () {  },
        child:  Text('Sign up',
        style: AppStyle.textStyle.copyWith(
          fontSize: 20,
        ),
        ),),
      ),
    ]);
  }
}
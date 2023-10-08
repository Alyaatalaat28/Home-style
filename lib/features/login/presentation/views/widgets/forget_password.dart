import 'package:flutter/material.dart';
import 'package:home_style/core/constants.dart';

import '../../../../../core/style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Password',
          style: AppStyle.textStyle15Black,),
          TextButton(
            onPressed: (){},
             child: Text('Forgot?',
             style: AppStyle.textStyle15Black.copyWith(
              color: buttonColor.withOpacity(0.5),
             ),
             ))
             ],
           );
  }
}
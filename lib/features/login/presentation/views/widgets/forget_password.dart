import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/style.dart';

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
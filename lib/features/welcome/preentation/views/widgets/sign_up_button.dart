import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

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
        child: const Text('Sign up',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textWColor,
        ),),),
      ),
    ]);
  }
}
import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/style.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Already have an account?',
        style: AppStyle.textStyle15,
         ),
        TextButton(
          onPressed: (){},
           child:  Text('Login',
           style:AppStyle.textStyle15Black
            ),)

      ],
    );
  }
}
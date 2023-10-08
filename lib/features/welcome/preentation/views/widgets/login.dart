import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already have an account?',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize:15 ,
          color: textWColor,
        ),),
        TextButton(
          onPressed: (){},
           child: const Text('Login',
           style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize:15 ,
          color: buttonColor,
        ),))

      ],
    );
  }
}
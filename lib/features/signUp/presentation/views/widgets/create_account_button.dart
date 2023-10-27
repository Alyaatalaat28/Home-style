import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';

import '../../../../../core/utils/style.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key,required this.onPressed});
   final void Function() onPressed;   
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 45,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: TextButton(
          onPressed:onPressed,
          child: Text('Create Account', style: AppStyle.textStyle15)),
    );
  }
}

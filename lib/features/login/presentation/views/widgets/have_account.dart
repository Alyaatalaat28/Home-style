import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/routes.dart';

import '../../../../../core/utils/style.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text('Don’t have an account?',
        style: AppStyle.textStyle15,),
        TextButton(
          onPressed: (){
             GoRouter.of(context).push(AppRouter.kSignUpView);
          }, 
          child: Text('Sign up',
          style: AppStyle.textStyle15Black))
      ],
    );
  }
}
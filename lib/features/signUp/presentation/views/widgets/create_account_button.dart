import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/routes.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/style.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:180,
      height:45 ,
      decoration: const BoxDecoration(
        color:buttonColor ,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: TextButton(
        onPressed: (){
           GoRouter.of(context).push(AppRouter.kBottomNavView);
        },
         child:  Text('Create Account',
         style: AppStyle.textStyle15)),
    );
  }
}
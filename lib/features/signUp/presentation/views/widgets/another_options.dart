import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/routes.dart';
import '../../../../../core/utils/style.dart';
import 'create_account_button.dart';

class AnotherOptions extends StatelessWidget {
  const AnotherOptions({super.key,required this.onPressed});
   final void Function() onPressed;   
  @override
  Widget build(BuildContext context) {
    return Column(children: [
       CreateAccountButton(
        onPressed:onPressed ),
      const SizedBox(height: 5),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Already have an account?', style: AppStyle.textStyle15),
        TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignInView);
            },
            child: Text('Login', style: AppStyle.textStyle15Black)),
      ]),
    ]);
  }
}

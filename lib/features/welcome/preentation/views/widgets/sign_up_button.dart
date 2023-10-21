import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/style.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 284,
        height: 59,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignUpView);
          },
          child: Text(
            'Sign up',
            style: AppStyle.textStyle.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      ),
    ]);
  }
}

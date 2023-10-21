import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/style.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppStyle.textStyle15,
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignInView);
          },
          child: Text('Login', style: AppStyle.textStyle15Black),
        )
      ],
    );
  }
}

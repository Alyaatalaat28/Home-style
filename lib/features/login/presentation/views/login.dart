import 'package:flutter/material.dart';
import 'package:home_style/features/login/presentation/views/widgets/login_body.dart';
import '../../../../core/utils/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:scafColor,
      body: LoginViewBody(),
    );
  }
}
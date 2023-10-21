import 'package:flutter/material.dart';
import 'package:home_style/features/signUp/presentation/views/widgets/signUp_body.dart';

import '../../../../core/utils/constants.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafColor,
      body: SignUpViewBody(),
    );
  }
}

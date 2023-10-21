import 'package:flutter/material.dart';
import 'package:home_style/features/user/presentation/views/widgets/user_view_body.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserViewBody(),
    );
  }
}

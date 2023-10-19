import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/core/widgets/custom_button2.dart';
import 'package:home_style/features/user/presentation/views/widgets/cover_profile_images.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            ProfileImage(),
       
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:home_style/features/user/presentation/views/widgets/cover_profile_images.dart';
import 'package:home_style/features/user/presentation/views/widgets/user_details.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              ProfileImage(),
              SizedBox(height: 15.0,),
              UserDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
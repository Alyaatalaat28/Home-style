import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/features/user/presentation/views/widgets/cover_profile_images.dart';
import 'package:home_style/features/user/presentation/views/widgets/log_out_button.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            const ProfileImage(),
            const SizedBox(height:5),
            Text('Gojo Saturo',
            style:AppStyle.textStyle15Black.copyWith(
                fontSize:MediaQuery.of(context).size.width*0.04,
              ),
            ),
             Text('alyaatalaat205@gmail.com',
            style:AppStyle.textStyle12Black.copyWith(
                fontSize:MediaQuery.of(context).size.width*0.03,
                color:buttonColor.withOpacity(0.5) ,
              ),
            ),
            const Spacer(),
            const LogOutButton(),
            const SizedBox(height:5),
          ],
        ),
      ),
    );
  }
}
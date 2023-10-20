import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/routes.dart';
import 'package:home_style/core/widgets/custom_button.dart';
import 'package:home_style/core/widgets/custom_button2.dart';

import '../../../../../core/utils/style.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/divider_row.dart';

import 'forget_password.dart';
import 'have_account.dart';

class LoginViewBody extends StatelessWidget {
   LoginViewBody({super.key});
  final TextEditingController nameOrEmailController=TextEditingController();
   final TextEditingController logPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(40.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Log in to Decorum!',
            style: AppStyle.textStyle,),
            const SizedBox(
              height: 15.0,
            ),
            const CustomButton(text: 'Log in with Google',),
             const SizedBox(
              height: 15.0,
            ),
            const DividerRow(text: 'Or log in with Email',),
             const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Username or Email',
                style: AppStyle.textStyle15Black,),
              ],
            ),
             const SizedBox(
              height: 5.0,
            ),
             CustomTextFormField(
              controller:nameOrEmailController , 
              label: '',),
              const SizedBox(
              height: 25.0,
            ),
              const ForgetPassword(),
              const SizedBox(
              height: 5.0,
            ),
              CustomTextFormField(
              controller:logPasswordController , 
              label: '',),
              const SizedBox(
              height: 20.0,
            ),
             CustomTextButton(
              color: buttonColor, 
              text: 'Login',
              onPressed: (){
                GoRouter.of(context).push(AppRouter.kBottomNavView);
              },
              ),
            const SizedBox(
              height: 50.0,
            ),
            const HaveAccount(),
            
          ],
        ),
      ),
    );
  }
}
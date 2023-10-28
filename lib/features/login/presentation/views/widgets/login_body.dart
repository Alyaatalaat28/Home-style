import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/routes.dart';
import 'package:home_style/core/widgets/custom_button.dart';
import 'package:home_style/core/widgets/custom_button2.dart';

import '../../../../../core/utils/style.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/divider_row.dart';

import '../../manager/cubit/login_cubit.dart';
import 'forget_password.dart';
import 'have_account.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final TextEditingController nameOrEmailController = TextEditingController();
  final TextEditingController logPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
       if(state is LoginSuccessState||state is GoogleUserSignInSuccessState){
        GoRouter.of(context).pushReplacement(AppRouter.kBottomNavView);
       }
      },
      builder: (context, state) {
        var cubit=LoginCubit.get(context);
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Log in to Decorum!',
                style: AppStyle.textStyle,
              ),
              const SizedBox(
                height: 15.0,
              ),
               CustomButton(
                text: 'Log in with Google',
                onPressed: (){
                  cubit.signInWithGoogle();
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              const DividerRow(
                text: 'Or log in with Email',
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username or Email',
                    style: AppStyle.textStyle15Black,
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              CustomTextFormField(
                controller: nameOrEmailController,
                label: '',
                 keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const ForgetPassword(),
              const SizedBox(
                height: 5.0,
              ),
              CustomTextFormField(
                controller: logPasswordController,
                label: '',
                 keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextButton(
                color: buttonColor,
                text: 'Login',
                onPressed: () {
                 cubit.userLogin(
                  email: nameOrEmailController.text, 
                  password: logPasswordController.text);
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
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home_style/core/utils/routes.dart';
import 'package:home_style/features/signUp/presentation/views/widgets/terms.dart';
import '../../../../../core/utils/style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/divider_row.dart';
import '../../manager/cubit/sign_up_cubit.dart';
import 'another_options.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if(state is CreateUserSuccessState||state is GoogleUserSignUpSuccessState){
          GoRouter.of(context).pushReplacement(AppRouter.kBottomNavView);
        }
      },
      builder: (context, state) {
        var cubit=SignUpCubit.get(context);
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal:40.0,vertical:60.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign up to Decorum!',
                style: AppStyle.textStyle,
              ),
              const SizedBox(
                height: 15.0,
              ),
               CustomButton(
                text: 'Sign up with Google',
                onPressed: (){
                  cubit.signUpWithGoogle();
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              const DividerRow(
                text: 'Or continue with Email',
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                controller: nameController,
                label: 'Enter your Name',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                controller: userNameController,
                label: 'Enter Username',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                controller: emailController,
                label: 'Enter Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                controller: passwordController,
                label: 'Enter Password',
                 keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const TermsAndServices(),
               AnotherOptions(
                onPressed: (){
                  cubit.signUPWithEmailAndPassword(
                    name: nameController.text,
                     userName: userNameController.text,
                      email: emailController.text,
                       password: passwordController.text);
                },
               ),
            ],
          ),
        ),
      );
      }
    );
  }
}

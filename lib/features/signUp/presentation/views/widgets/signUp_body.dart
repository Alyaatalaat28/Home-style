// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:home_style/features/signUp/presentation/views/widgets/terms.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/divider_row.dart';
import 'another_options.dart';

class SignUpViewBody extends StatelessWidget {
    SignUpViewBody({super.key});

  TextEditingController nameController=TextEditingController();
  TextEditingController userNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(40.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Sign up to Decorum!',
            style: TextStyle(
              color:textWColor ,
              fontSize:30 ,
              fontWeight:FontWeight.w700 ,
            ),
            ),
            const SizedBox(height: 15.0,),
            const CustomButton(text: 'Sign up with Google',),
            const SizedBox(height: 15.0,),
            const DividerRow(text: 'Or continue with Email',),
            const SizedBox(height: 15.0,),
            CustomTextFormField(
              controller:nameController ,
               label: 'Enter your Name',  
            ),
            const SizedBox(height: 15.0,),
            CustomTextFormField(
              controller:userNameController ,
               label: 'Enter Username',  
            ),
            const SizedBox(height: 15.0,),
            CustomTextFormField(
              controller:emailController ,
               label: 'Enter Email',  
            ),
            const SizedBox(height: 15.0,),
            CustomTextFormField(
              controller:passwordController ,
               label: 'Enter Password',  
            ),
            const SizedBox(height: 5.0,),
            const TermsAndServices(),
           AnotherOptions(),
        
          ],
        ),
      ),
    );
  }
}
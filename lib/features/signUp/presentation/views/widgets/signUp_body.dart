// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/divider_row.dart';

class SignUpViewBody extends StatelessWidget {
    SignUpViewBody({super.key});
  TextEditingController nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(40.0),
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
          const SizedBox(height: 20.0,),
          const CustomButton(text: 'Sign up with Google',),
          const SizedBox(height: 20.0,),
          const DividerRow(text: 'Or continue with Email',),
          const SizedBox(height: 20.0,),
          CustomTextFormField(
            controller:nameController ,
             label: 'Enter your name',
            
          ),

        ],
      ),
    );
  }
}
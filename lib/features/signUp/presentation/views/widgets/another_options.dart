import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'create_account_button.dart';

class AnotherOptions extends StatelessWidget {
  const AnotherOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children:[
          const CreateAccountButton(),
          const SizedBox(height:5),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              const Text('Already have an account?',
              style: TextStyle(
                color:textWColor ,
                fontSize:15 ,
                fontWeight:FontWeight.w700,
              ),),
          TextButton(
            onPressed: (){},
            child:const Text('Login',
          style: TextStyle(
            color:buttonColor,
            fontSize:15 ,
            fontWeight:FontWeight.w700,
          ),)),
            ]),
          ]
    );
  }
}
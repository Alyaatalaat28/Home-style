import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
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
               Text('Already have an account?',
              style: AppStyle.textStyle15),
          TextButton(
            onPressed: (){},
            child: Text('Login',
          style:AppStyle.textStyle15Black)),
            ]),
          ]
    );
  }
}
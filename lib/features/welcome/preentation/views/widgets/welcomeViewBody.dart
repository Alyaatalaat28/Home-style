import 'package:flutter/material.dart';
import 'package:home_style/features/welcome/preentation/views/widgets/sign_up_button.dart';
import 'package:home_style/features/welcome/preentation/views/widgets/stack_widget.dart';
import '../../../../../core/utils/style.dart';
import 'login.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' Welcome To\n Decorum!',
          style: AppStyle.textStyle.copyWith(
            fontSize: 40,
          ),
          ),
           const SizedBox(height: 10,),
           Text('  Discover a World of Comfort and Style',
          style: AppStyle.textStyle15Black.copyWith(
            fontSize: 20,
          )),
          const SizedBox(height: 30,),
          const StackWidget(),
           const SizedBox(height: 16,),
          const SignUpButton(),
           const SizedBox(height: 8,),
          const LoginRow(),
          const Expanded(
            child: Image(
              image: AssetImage('assets/images/new.png',
              ),
              fit: BoxFit.fill, 
              width: double.infinity,
            ),
          ),
          
        ]
      ),
    );
  }
}
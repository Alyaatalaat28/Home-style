import 'package:flutter/material.dart';
import 'package:home_style/features/welcome/preentation/views/widgets/sign_up_button.dart';
import 'package:home_style/features/welcome/preentation/views/widgets/stack_widget.dart';

import '../../../../../core/constants.dart';
import 'login.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.only(top:10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' Welcome To\n Decorum!',
          style: TextStyle(
            color:textWColor,
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),),
           SizedBox(height: 10,),
          Text('  Discover a World of Comfort and Style',
          style: TextStyle(
            color:textBColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          )),
          SizedBox(height: 30,),
          StackWidget(),
           SizedBox(height: 16,),
          SignUpButton(),
           SizedBox(height: 8,),
          LoginRow(),
          Expanded(
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
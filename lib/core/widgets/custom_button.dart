import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onPressed,required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width:306 ,
      height:56 ,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: TextButton(
        onPressed:onPressed ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Image(
            image: AssetImage('assets/images/google.png'),
            height: 20,
            width: 20,
           ),
           const SizedBox(width:5),
            Text(text,
            style: AppStyle.textStyle.copyWith(
              fontSize: 15,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
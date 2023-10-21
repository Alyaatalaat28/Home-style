import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.color, required this.text, this.onPressed});
  final String text;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 45,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyle.textStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

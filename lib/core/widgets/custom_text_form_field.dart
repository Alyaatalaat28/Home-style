import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, required this.label,required this.keyboardType});
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: buttonColor,
      keyboardType:keyboardType ,
      decoration: InputDecoration(
        hintText: label,
        filled: true,
        fillColor: textWColor,
        border: textFormBorder(),
        enabledBorder: textFormBorder(),
        focusedBorder: textFormBorder(),
      ),
    );
  }

  OutlineInputBorder textFormBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(
          color: textWColor,
        ));
  }
}

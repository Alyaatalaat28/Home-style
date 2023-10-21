import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, required this.label});
  final TextEditingController controller;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: buttonColor,
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

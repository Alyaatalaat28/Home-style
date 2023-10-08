import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import 'divider.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key,required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MyDivider(),
        Text(text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: buttonColor,
        ),),
        const MyDivider(),
      ],
    );
  }
}
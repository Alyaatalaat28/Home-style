import 'package:flutter/material.dart';
import '../utils/style.dart';
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
        style: AppStyle.textStyle15Black),
        const MyDivider(),
      ],
    );
  }
}
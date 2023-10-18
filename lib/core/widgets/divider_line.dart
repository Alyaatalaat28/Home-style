import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.zero,
      child: Container(
        width:1,
        height:1,
        color:stackColor,
      ),
    );
  }
}
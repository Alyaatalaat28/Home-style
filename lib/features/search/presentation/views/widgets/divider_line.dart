import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        height: 1,
        color: buttonColor,
      ),
    );
  }
}

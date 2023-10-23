import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import '../../../../../core/utils/style.dart';

class TermsAndServices extends StatelessWidget {
  const TermsAndServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(activeColor: buttonColor, value: true, onChanged: (value) {}),
        Text('I agree with the Terms of Service ',
            style: AppStyle.textStyle15.copyWith(
              fontSize: 12,
            ))
      ],
    );
  }
}

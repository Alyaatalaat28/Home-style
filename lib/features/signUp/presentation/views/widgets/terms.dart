import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/style.dart';

class TermsAndServices extends StatelessWidget {
  const TermsAndServices({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
          value: false,
           onChanged: (value){ }),
            Text('I agree with the Terms of Service and Privacy policy',
           maxLines: 2,
           style: AppStyle.textStyle15.copyWith(
            fontSize: 12,
           ))
      ],
    );
  }
}
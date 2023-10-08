import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class TermsAndServices extends StatelessWidget {
  const TermsAndServices({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
          value: false,
           onChanged: (value){ }),
           const Text('I agree with the Terms of Service and Privacy policy',
           maxLines: 2,
           style: TextStyle(
            fontSize:12 ,
            fontWeight:FontWeight.w700 ,
            color:textWColor ,
           ),)
      ],
    );
  }
}
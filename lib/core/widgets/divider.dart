import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width*0.1,
        height: 1,
        color: buttonColor,
      ),
    );
  }
}

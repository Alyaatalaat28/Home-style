import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width:205 ,
          height:200 ,
          decoration: const BoxDecoration(
            color:stackColor,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(32) ,
              topRight:Radius.circular(32)  ,
              bottomLeft:Radius.circular(20)  ,
              bottomRight:Radius.circular(20)  )
          ),
        ),
      ],
    );
  }
}
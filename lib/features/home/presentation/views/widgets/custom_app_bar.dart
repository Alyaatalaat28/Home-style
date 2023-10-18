import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
       children:[
        const Image(
          image:AssetImage('assets/images/menu.png'),
        ),
        const Spacer(),
        const Image(
          image:AssetImage('assets/images/qr.png'),
        ), 
        const SizedBox(width: 3,),
        Text('Scan',
        style:AppStyle.textStyle12Black) ,      
       ]
    );
  }
}
import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

import '../../../../../core/utils/constants.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width:205 ,
        height:248 ,
      child: Stack(
        children: [
          Positioned(
            left:0,
            top:46,
            child: Align(
              child: Container(
                width:205 ,
                height:200 ,
                decoration: const BoxDecoration(
                  color:stackColor,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(90) ,
                    topRight:Radius.circular(20)  ,
                    bottomLeft:Radius.circular(20)  ,
                    bottomRight:Radius.circular(20)  )
                ),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            top:0,
            child: Align(
              child:SizedBox(
                width:205 ,
                height:178 ,
                child: Image(
                      image:AssetImage('assets/images/Imput.png'),
                    ),
              ),
            ),
          ),
           Positioned(
            left:67.5,
            top:174,
            child: SizedBox(
              width:70,
              height:48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Armchair',
                  style: AppStyle.textStyle12Black,),
                  const SizedBox(height:5,),
                  Text("100+Product",
                  style: AppStyle.textStyle12Black.copyWith(
                    color:buttonColor.withOpacity(0.6 ) ,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
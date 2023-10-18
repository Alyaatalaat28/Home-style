import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
       alignment: Alignment.center,
      children: [
        Positioned(
        top:25,
        left:35,
          child: Align(
            child: Container(
              width:145 ,
              height:200 ,
              decoration: BoxDecoration(
                color: stackColor,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      const Positioned(
        top:0,
        left:35,
        child: Align(
          child: SizedBox(
            width:145 ,
            height:209 ,
            child: Image(
              image: AssetImage('assets/images/Imput.png'),),
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
                  style: AppStyle.textStyle12Black),
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
    );
  }
}
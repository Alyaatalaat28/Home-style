import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/core/widgets/custom_button2.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(maxHeight:height*0.5),
      decoration:const BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )
      ),
          child:Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Tieton Armchair',
                style:AppStyle.textStyle15Black,
                ),
                const SizedBox(height: 10,),
                Text('This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.',
                style:AppStyle.textStyle12Black.copyWith(
                  color: buttonColor.withOpacity(0.5),
                  height: 1.9,
                )
                
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextButton(
                      color: scafColor,
                       text: 'ADD TO CART',
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
              ]),
            ),
          ),
    );
  }
}
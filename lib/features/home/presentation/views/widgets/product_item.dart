import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key,required this.title,required this.price,required this.image});
  
   final String title;
   final int price;
   final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 230,
          height: 260,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 15,
            left: 35,
            child: Align(
              child: Container(
                width: 220,
                height: 230,
                decoration: BoxDecoration(
                  color: stackColor,
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
          ),
           Positioned(
            top: 0,
            left: 30,
            child: Align(
              child: SizedBox(
                width: 145,
                height: 190,
                child:CachedNetworkImage(
                  imageUrl: image,
                  errorWidget: (context,url,error)=> const Icon( Icons.error),), 
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 160,
            child: SizedBox(
              width: 70,
              height: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                   style: AppStyle.textStyle12Black),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('$price',
                      style: AppStyle.textStyle12Black.copyWith(
                        color: buttonColor.withOpacity(0.6),
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

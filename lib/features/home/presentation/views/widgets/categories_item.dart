import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

import '../../../../../core/utils/constants.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key,required this.title,required this.numOfProducts,required this.image});
   final String title;
   final int numOfProducts;
   final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      height: 248,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 46,
            child: Align(
              child: Container(
                width: 205,
                height: 200,
                decoration: const BoxDecoration(
                    color: stackColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(90),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
          ),
           Positioned(
            left: 0,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 205,
                height: 178,
                child:CachedNetworkImage(
                  imageUrl: image,
                  errorWidget: (context,url,error)=> const Icon( Icons.error),), 
                ),
              ),
            ),
          Positioned(
            left: 67.5,
            top: 174,
            child: SizedBox(
              width: 70,
              height: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppStyle.textStyle15Black,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('$numOfProducts',
                      style: AppStyle.textStyle15Black.copyWith(
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

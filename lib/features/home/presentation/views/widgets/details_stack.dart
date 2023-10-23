import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'item_details.dart';

class DetailsStack extends StatelessWidget {
  const DetailsStack({super.key,required this.title,required this.subTitle,required this.price,required this.description,required this.image});
  final String title;
  final String subTitle;
  final num price;
  final String description;
    final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
         ItemDetail(
          title: title ,
          subTitle: subTitle, 
          price: price,
           description:description ,),
        Positioned(
          top: 0,
          left: MediaQuery.of(context).size.width * 0.35,
          child: Align(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.5,
              child: CachedNetworkImage(
                  imageUrl: image,
                  errorWidget: (context,url,error)=> const Icon( Icons.error),), 
            ),
          ),
        ),
      ]),
    );
  }
}

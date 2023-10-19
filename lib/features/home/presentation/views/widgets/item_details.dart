import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/features/home/presentation/views/widgets/available_colors.dart';
import 'item_details_card.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('chair'.toUpperCase(),
        style: AppStyle.textStyle12Black.copyWith(
          color: buttonColor.withOpacity(0.5),
          fontSize:MediaQuery.of(context).size.width*0.035,
        )),
        const SizedBox(height:5),
        Text('Green\nArmchair ',
        style: AppStyle.textStyle15Black.copyWith(
          fontSize:MediaQuery.of(context).size.width*0.04,
        ),
        ),
        const SizedBox(height:20),
        Text('From',
        style: AppStyle.textStyle12Black.copyWith(
          color: buttonColor.withOpacity(0.5),
          fontSize:MediaQuery.of(context).size.width*0.035,
        )),
        const SizedBox(height:5),
         Text('\$289.99',
        style: AppStyle.textStyle15Black.copyWith(
          fontSize:MediaQuery.of(context).size.width*0.04,
        ),
        ),
       const SizedBox(height:20),
      Text('Available Colors',
        style: AppStyle.textStyle12Black.copyWith(
          color: buttonColor.withOpacity(0.5),
          fontSize:MediaQuery.of(context).size.width*0.035,
        )),
         const SizedBox(height:5),
         const AvailableColor(),
         const SizedBox(height:15),
         const DetailsCard(),

      ],
    );
  }
}
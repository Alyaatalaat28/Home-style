import 'package:flutter/material.dart';
import 'package:home_style/features/home/presentation/views/widgets/categories_item.dart';

class CategorisListView extends StatelessWidget {
  const CategorisListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height:MediaQuery.of(context).size.height*0.4,
      child: ListView.builder(
        shrinkWrap: true,
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemBuilder:((context, index) =>const Padding(
            padding:  EdgeInsets.symmetric(horizontal:15.0,vertical: 0.8),
            child: CategoriesItem(),
          ) ),
          itemCount: 10,
      ),
    );
  }
}
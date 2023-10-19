import 'package:flutter/material.dart';
import 'item_details.dart';

class DetailsStack extends StatelessWidget {
  const DetailsStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children:[
          const ItemDetail(),
          Positioned(
            top:0,
            left:MediaQuery.of(context).size.width*0.43,
            child:  Align(
              child: SizedBox(
               width:MediaQuery.of(context).size.width*0.65 ,
                height:MediaQuery.of(context).size.height*0.5, 
                child: const Image(
                  image:AssetImage('assets/images/Imput.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/core/widgets/custom_button2.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_state.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key,required this.subTitle,required this.description});
  final String subTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeCubtState>(
      builder: (BuildContext context, HomeCubtState state) { 
        double height = MediaQuery.of(context).size.height; 
      return Container(
        constraints: BoxConstraints(maxHeight: height * 0.5),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                subTitle,
                style: AppStyle.textStyle15Black.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                  style: AppStyle.textStyle12Black.copyWith(
                    color: buttonColor.withOpacity(0.5),
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    height: 1.9,
                  )),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(
                    color: scafColor,
                    text: 'ADD TO Cart',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      );
  });
  }
}

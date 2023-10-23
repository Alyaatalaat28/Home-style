import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/widgets/custom_error_widget.dart';
import 'package:home_style/core/widgets/custom_loading_indicator.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_state.dart';
import 'package:home_style/features/home/presentation/views/widgets/categories_item.dart';

class CategorisListView extends StatelessWidget {
  const CategorisListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeCubtState>(
      builder:(context,state) {
        if(state is FetchCategorisItemSuccessState ) {
          return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) =>  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.8),
                child: CategoriesItem(
                  title:state.categoris[index].title!,
                   numOfProducts: state.categoris[index].numOfProducts!,
                    image: state.categoris[index].image!
                    ,),
              )),
          itemCount:state.categoris.length,
        ),
      );
        }else if(state is FetchCategorisItemErrorState ){
          return CustomErrorWidget(errMessage: state.error,);
        }else{
          return const CustomLoadingIndicator();
        }
      }
    );
  }
}

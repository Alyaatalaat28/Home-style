import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/widgets/custom_error_widget.dart';
import 'package:home_style/core/widgets/custom_loading_indicator.dart';
import 'package:home_style/features/home/presentation/views/details_view.dart';
import 'package:home_style/features/home/presentation/views/widgets/product_item.dart';

import '../../manager/cubit/product_cubit.dart';
import '../../manager/cubit/product_state.dart';


class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is FetchProductsItemSuccessState) {
          return  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          const double maxWidth = 600;
          final int crossAxisCount = constraints.maxWidth < maxWidth ? 2 : 4;
          final double crossAxisSpacing =
              constraints.maxWidth < maxWidth ? 1.0 : 12;
          return SingleChildScrollView(
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: crossAxisSpacing,
                mainAxisSpacing: 1.0,
                childAspectRatio: 1/1.72,
                children:List.generate( 
                   state.products.length,
                    (index) => InkWell(
                      onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsView(
                        title: state.products[index].title!, 
                        subTitle: state.products[index].subTitle!,
                         price: state.products[index].price!,
                          description: state.products[index].description!, 
                          image: state.products[index].image!,
                       
                      )));
                      },
                      child: ProductItem(
                         title: state.products[index].title!,
                         price: state.products[index].price! , 
                         image: state.products[index].image! ,),
                    ),
              ),
             
            ),
          );
        },
      );
        }else if(state is FetchProductsItemErrorState){
          return CustomErrorWidget(errMessage: state.error);
        }else{
          return const CustomLoadingIndicator();
        }
      }
    );
  }
}

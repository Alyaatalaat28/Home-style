import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/widgets/custom_error_widget.dart';
import 'package:home_style/core/widgets/custom_loading_indicator.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_state.dart';
import 'package:home_style/features/home/presentation/views/details_view.dart';
import 'package:home_style/features/home/presentation/views/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeCubtState>(
      builder: (context, state) {
        if(state is FetchProductsItemSuccessState) {
          return  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          const double maxWidth = 600;
          final int crossAxisCount = constraints.maxWidth < maxWidth ? 2 : 4;
          final double crossAxisSpacing =
              constraints.maxWidth < maxWidth ? 0.2 : 12;
    
          return SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: crossAxisSpacing,
                mainAxisSpacing: 0.2,
              ),
              itemBuilder: (context, index) =>  InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsView(
                    title: state.products[index].title!,
                     subTitle: state.products[index].subTitle!,
                      price:  state.products[index].price!,
                       description:  state.products[index].description!,
                        image: state.products[index].image! ,
                  )));},
                child: ProductItem(
                  title: state.products[index].title!,
                   price: state.products[index].price! , 
                   image: state.products[index].image! ,),
              ),
              itemCount: state.products.length ,
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


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/features/home/data/repos/home_repo.dart';

import 'product_state.dart';



class ProductCubit extends Cubit<ProductState> {
  HomeRepo homeRepo;
  ProductCubit({required this.homeRepo}) : super(ProductInitial());
    static ProductCubit get(context) => BlocProvider.of(context);

    
Future<void>fetchProducts()async{
  emit(FetchProductsItemLoadingState());
  var result=await homeRepo.fetchProductItems();
  result.fold(
    (failure)=>emit(FetchProductsItemErrorState(error: failure.errMessage)),
    (products)=>emit(FetchProductsItemSuccessState(products: products))
  );
}

}

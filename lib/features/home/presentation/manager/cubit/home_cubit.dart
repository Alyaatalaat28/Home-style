import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/features/favorite/presentation/views/fav_view.dart';
import 'package:home_style/features/home/data/repos/home_repo.dart';
import 'package:home_style/features/search/presentation/views/search_view.dart';
import 'package:home_style/features/user/presentation/views/user_view.dart';
import '../../views/home_view.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeCubtState> {
  HomeCubit({required this.homeRepo}) : super(HomeCubtInitial());
 
  static HomeCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = const [
    HomeView(),
    SearchView(),
    FavView(),
    UserView()
  ];

  int selectedIndex = 0;

  void changeBottomNavIndex(int index) {
    selectedIndex = index;
    emit(ChangeBottomNavIndexState());
  }

HomeRepo homeRepo;
Future<void>fetchCategoris()async{
  emit(FetchCategorisItemLoadingState());
  var result=await homeRepo.fetchCategorisItems();
  result.fold(
    (failure)=>emit(FetchCategorisItemErrorState(error: failure.errMessage)),
    (categoris)=>emit(FetchCategorisItemSuccessState(categoris: categoris))
  );
}

Future<void>fetchProducts()async{
  emit(FetchProductsItemLoadingState());
  var result=await homeRepo.fetchProductItems();
  result.fold(
    (failure)=>emit(FetchProductsItemErrorState(error: failure.errMessage)),
    (products)=>emit(FetchProductsItemSuccessState(products: products))
  );
}

}

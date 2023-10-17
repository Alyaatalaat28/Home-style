
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../cart/presentation/views/cart_view.dart';
import '../../../../search/presentation/views/search_view.dart';
import '../../../../user/presentation/views/user_view.dart';
import '../../views/home_view.dart';
import 'home_state.dart';



class HomeCubit extends Cubit<HomeCubtState> {
  HomeCubit() : super(HomeCubtInitial());

   static HomeCubit get(context)=>BlocProvider.of(context);
  
// List<Widget>screens=const[
//   HomeView(),
//   SearchView(),
//   CartView(),
//   UserView()
// ];

int selectedIndex=0;
}

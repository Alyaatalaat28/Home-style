
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/features/favorite/presentation/views/fav_view.dart';
import 'package:home_style/features/search/presentation/views/search_view.dart';
import 'package:home_style/features/user/presentation/views/user_view.dart';
import '../../views/home_view.dart';
import 'home_state.dart';



class HomeCubit extends Cubit<HomeCubtState> {
  HomeCubit() : super(HomeCubtInitial());

   static HomeCubit get(context)=>BlocProvider.of(context);
  
List<Widget>screens=const[
  HomeView(),
  SearchView(),
  FavView(),
  UserView()
];

int selectedIndex=0;

void changeBottomNavIndex(int index){
    selectedIndex=index;
    emit(ChangeBottomNavIndexState());
}

}

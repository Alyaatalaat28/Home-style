import 'package:flutter/material.dart';
import 'package:home_style/features/home/data/models/products/products.dart';

import '../../../data/models/categoris/categoris.dart';

@immutable
sealed class HomeCubtState {}

final class HomeCubtInitial extends HomeCubtState {}

final class ChangeBottomNavIndexState extends HomeCubtState {}

final class  FetchCategorisItemLoadingState extends HomeCubtState {}

final class  FetchCategorisItemSuccessState extends HomeCubtState {
  final List<Categoris> categoris;

  FetchCategorisItemSuccessState({required this.categoris});

}

final class  FetchCategorisItemErrorState extends HomeCubtState {

final String error;

  FetchCategorisItemErrorState({required this.error});

}


final class  FetchProductsItemLoadingState extends HomeCubtState {}

final class  FetchProductsItemSuccessState extends HomeCubtState {
  final List<Products> products;

  FetchProductsItemSuccessState({required this.products});

}

final class  FetchProductsItemErrorState extends HomeCubtState {

final String error;

  FetchProductsItemErrorState({required this.error});

}


import 'package:equatable/equatable.dart';
import 'package:home_style/features/home/data/models/products/products.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductInitial extends ProductState {}

final class  FetchProductsItemLoadingState extends ProductState {}

final class  FetchProductsItemSuccessState extends ProductState {
  final List<Products> products;

  const FetchProductsItemSuccessState({required this.products});

}
final class FetchProductsItemErrorState extends ProductState {
  final String error;

 const FetchProductsItemErrorState({required this.error});

}

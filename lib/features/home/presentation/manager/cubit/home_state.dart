import 'package:flutter/material.dart';
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





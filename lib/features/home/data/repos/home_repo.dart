import 'package:dartz/dartz.dart';
import 'package:home_style/core/errors/failure.dart';

import '../models/categoris/categoris.dart';
import '../models/products/products.dart';

abstract class HomeRepo{

  Future<Either<Failure,Categoris>> fetchCategorisItems();
  Future<Either<Failure,Products>> fetchProductItems();

}
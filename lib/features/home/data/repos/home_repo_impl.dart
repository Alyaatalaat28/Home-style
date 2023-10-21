// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:home_style/core/errors/failure.dart';
import 'package:home_style/core/utils/api_services.dart';
import 'package:home_style/features/home/data/models/categoris/categoris.dart';
import 'package:home_style/features/home/data/models/products/products.dart';
import 'package:home_style/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
 const HomeRepoImpl(this.apiService);

 //categoris

  @override
  Future<Either<Failure, Categoris>> fetchCategorisItems()async {
    try{
      var data=await apiService.get(endPoint: 'categories');
      Categoris categories=Categoris.fromMap(data);
         return right(categories);
      }
     
    catch(e){
        if(e is DioError){
          return Left(ServerFailure.fromDioError(e));
        }
        return Left(ServerFailure(e.toString()));
    }
  }


 //products

  @override
  Future<Either<Failure, Products>> fetchProductItems()async {
    try{
      var proData=await apiService.get(endPoint: 'categories');
      Products products=Products.fromJson(proData);
         return right(products);
      }
     
    catch(e){
        if(e is DioError){
          return Left(ServerFailure.fromDioError(e));
        }
        return Left(ServerFailure(e.toString()));
    }
    
  }


}
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
  Future<Either<Failure, List<Categoris>>> fetchCategorisItems()async {
    List<Categoris>categorisList=[];
    try{
      var response=await apiService.get(endPoint: 'categories');
     categorisList=response .map((data) =>Categoris.fromMap(data)).toList();
      
         return right(categorisList);
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
  Future<Either<Failure, List<Products>>> fetchProductItems()async {
    List<Products>productsList=[];
    try{
      var response=await apiService.get(endPoint: 'products');
          productsList=response.map((data)=>Products.fromJson(data)).toList();

         return right(productsList);
      }
     
    catch(e){
        if(e is DioError){
          return Left(ServerFailure.fromDioError(e));
        }
        return Left(ServerFailure(e.toString()));
    }
    
  }


}
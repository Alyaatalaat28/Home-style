import 'package:get_it/get_it.dart';
import 'package:home_style/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:home_style/features/home/data/repos/home_repo_impl.dart';

final getIt=GetIt.instance;

void setUpServiceLocator(){

  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>()));
    
}
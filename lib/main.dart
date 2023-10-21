import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/utils/api_services.dart';
import 'package:home_style/core/utils/bloc_observer.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:home_style/features/signUp/presentation/manager/cubit/sign_up_cubit.dart';
import 'core/utils/routes.dart';
import 'features/home/data/repos/home_repo_impl.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(homeRepo: HomeRepoImpl(ApiService(Dio()))),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}

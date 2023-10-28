import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_style/core/utils/bloc_observer.dart';
import 'package:home_style/core/utils/firebase_messaging.dart';
import 'package:home_style/core/utils/service_locator.dart';
import 'package:home_style/features/home/data/repos/home_repo_impl.dart';
import 'package:home_style/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:home_style/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:home_style/features/signUp/presentation/manager/cubit/sign_up_cubit.dart';
import 'core/utils/routes.dart';
import 'features/home/presentation/manager/cubit/product_cubit.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
      apiKey: "AIzaSyDlyeugJTtVMlzVI7w9R2CG1M-dbgV4rEo",
       appId:"1:1095783861496:android:2ed21239d04b262dc8bf0d" ,
        messagingSenderId: "1095783861496	",
         projectId: "decorum-e2f84"
         ),
  );
    await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  setUpServiceLocator();
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
          create: (context) => HomeCubit(homeRepo: getIt.get<HomeRepoImpl>())..fetchCategoris(),
        ),
         BlocProvider(
          create: (context) => ProductCubit(homeRepo: getIt.get<HomeRepoImpl>())..fetchProducts(),
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

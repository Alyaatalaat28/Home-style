import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/bottom_nav_bar.dart';
import '../../features/login/presentation/views/login.dart';
import '../../features/signUp/presentation/views/signUp.dart';

abstract class AppRouter{
  static const kSignUpView='/SignUpView';
  static const kSignInView='/SignInView';
  static final router=GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  CustomBottomNav(),
        ),
       GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
        ),
       GoRoute(
        path: kSignInView,
        builder: (context, state) => const LoginView(),
        ),
    ]
  );

}
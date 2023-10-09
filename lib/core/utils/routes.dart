import 'package:go_router/go_router.dart';

import '../../features/login/presentation/views/login.dart';
import '../../features/signUp/presentation/views/signUp.dart';
import '../../features/welcome/preentation/views/welcome.dart';

abstract class AppRouter{
  static const kSignUpView='/SignUpView';
  static const kSignInView='/SignInView';
  static final router=GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeView(),
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
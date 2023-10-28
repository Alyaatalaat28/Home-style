import 'package:go_router/go_router.dart';
import 'package:home_style/features/home/presentation/views/bottom_nav_bar.dart';
import 'package:home_style/features/welcome/preentation/views/welcome.dart';
import '../../features/login/presentation/views/login.dart';
import '../../features/signUp/presentation/views/signUp.dart';

abstract class AppRouter {
  static const KWelcomeView = '/';
  static const kSignUpView = '/SignUpView';
  static const kSignInView = '/SignInView';
  static const kBottomNavView = '/CustomBottomNav';

  static final router = GoRouter(routes: [
    GoRoute(
      path: KWelcomeView,
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
    GoRoute(
      path: kBottomNavView,
      builder: (context, state) => const CustomBottomNav(),
    ),
  
  ]);
}

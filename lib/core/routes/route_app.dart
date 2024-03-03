import 'package:dalel/features/author/presentation/login.dart';
import 'package:dalel/features/author/presentation/register.dart';
import 'package:dalel/features/splashs/presentation/view.dart';
import 'package:dalel/features/on%20boaring/presentarion/on_board_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter ourRouter = GoRouter(
  routes: [
    // Home screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    // OnBoarding screen
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoarding(),
    ),
    // Login screen
    GoRoute(
      path: '/loginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
    // Register screen
    GoRoute(
      path: '/registerScreen',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);

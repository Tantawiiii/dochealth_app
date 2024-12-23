import 'package:dochealth_app/core/di/dependency_injection.dart';
import 'package:dochealth_app/core/routing/routers.dart';
import 'package:dochealth_app/features/home/home_screen.dart';
import 'package:dochealth_app/features/login/logic/cubit/login_cubit.dart';
import 'package:dochealth_app/features/login/ui/screens/login_screen.dart';
import 'package:dochealth_app/features/onboarding/onboarding_screen.dart';
import 'package:dochealth_app/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dochealth_app/features/signup/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This argument is used to pass in any Screen
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}

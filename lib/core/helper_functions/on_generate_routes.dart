import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/presentation/views/login_view.dart';
import 'package:fruit_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_app/features/splash/presentaion/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    case OnBoardingView.routename:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text('Page not found')),
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_app/features/home/presentaion/views/home_view.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_app/features/splash/presentaion/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());

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

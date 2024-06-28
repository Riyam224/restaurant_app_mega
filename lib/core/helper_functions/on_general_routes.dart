import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:final_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:final_project/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

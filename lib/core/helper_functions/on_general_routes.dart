import 'package:final_project/features/auth/presentation/views/login_view.dart';
import 'package:final_project/features/auth/presentation/views/register_view.dart';
import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:final_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:final_project/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // todo splash view

    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    // todo onBoarding  view
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    //  todo auth views
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());

    case RegisterView.routeName:
      return MaterialPageRoute(builder: (context) => RegisterView());
    // todo home view
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

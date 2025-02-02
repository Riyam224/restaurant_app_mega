// ignore_for_file: prefer_const_constructors

import 'package:final_project/features/auth/presentation/views/login_view.dart';
import 'package:final_project/features/auth/presentation/views/register_view.dart';
import 'package:final_project/features/category/presentation/views/breakfast_bite_views.dart';
import 'package:final_project/features/favorite/presentation/views/favorite_view.dart';
import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:final_project/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:final_project/features/payment/presentation/views/payment_view.dart';
import 'package:final_project/features/payment/presentation/views/success_order_view.dart';
import 'package:final_project/features/splash/presentation/views/splash_view.dart';
import 'package:final_project/navbar.dart';
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
      return MaterialPageRoute(builder: (context) => HomeView());
// todo payment  views
    case PaymentView.routeName:
      return MaterialPageRoute(builder: (context) => PaymentView());

    case SuccessOrderView.routeName:
      return MaterialPageRoute(builder: (context) => SuccessOrderView());
    // todo breakfast bite
    case BreakfastBiteViews.routeName:
      return MaterialPageRoute(builder: (context) => BreakfastBiteViews());

    //  todo favorite view

    case FavoriteView.routeName:
      return MaterialPageRoute(builder: (context) => FavoriteView());

    case BottomNavBar.routeName:
      return MaterialPageRoute(builder: (context) => BottomNavBar());

    // todo default
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

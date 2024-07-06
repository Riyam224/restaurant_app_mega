import 'package:final_project/core/helper_functions/on_general_routes.dart';
import 'package:final_project/features/cart/presentation/views/cart_view.dart';
import 'package:final_project/features/category/presentation/views/breakfast_bites_details.dart';
import 'package:final_project/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Karla'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: CartView.routeName,
    );
  }
}

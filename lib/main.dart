import 'package:final_project/core/helper_functions/on_general_routes.dart';
import 'package:final_project/features/splash/presentation/views/splash_view.dart';
import 'package:final_project/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: MyHomePage.routeName,
    );
  }
}

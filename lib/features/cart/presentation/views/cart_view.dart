import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const routeName = 'cart';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('cart View'),
    ));
  }
}

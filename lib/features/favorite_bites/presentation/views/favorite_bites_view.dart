import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteBitesView extends StatelessWidget {
  const FavoriteBitesView({super.key});

  static const routeName = 'favorite-bites-';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('favorite View'),
    ));
  }
}

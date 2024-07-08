// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class SuccessOrderView extends StatelessWidget {
  const SuccessOrderView({super.key});

  static const routeName = "successOrder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xff18181e),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, HomeView.routeName);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
                Container(),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            'Success',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'Your order is placed successfully',
            style: TextStyle(
              color: Color(0xffcfcfd0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'assets/images/success.png',
            ),
          ),
        ],
      ),
    ));
  }
}

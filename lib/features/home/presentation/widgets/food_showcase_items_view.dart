// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodShowcaseItemsView extends StatelessWidget {
  const FoodShowcaseItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff150500),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                  child: Image.asset(
                    'assets/images/c6.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
                width: double.infinity,
                // TOdo inside column
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pizza',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        'most delicious food',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$10'),
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff37545)),
                                  child: Center(
                                      child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ))),
                              const Text('2'),
                              Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff37545)),
                                  child: Center(
                                      child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ))),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

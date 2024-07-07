// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_project/features/category/presentation/views/breakfast_bites_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class OrderMap extends StatelessWidget {
  OrderMap({super.key});

  static const routeName = "OrderMap";

  final List<Map<String, dynamic>> categories = [
    {
      'name': 'Home',
      'icon': Icons.home,
    },
    {
      'name': 'Categories',
      'icon': Icons.category,
    },
    {
      'name': 'Favorite Items',
      'icon': Icons.favorite,
    },
    {
      'name': 'Cart',
      'icon': Icons.shopping_bag,
    },
    {
      'name': 'Payments',
      'icon': Icons.payment,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff26262d),

        appBar: AppBar(
          backgroundColor: Color(0xffff793d),
          title: const Text(
            'Restaurant | Tracking my Order ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          elevation: 0,
        ),
        //  todo

        drawer: Drawer(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xff26262d),
            child: Column(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      Container(
                        width: 69,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/user.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // todo
                      const SizedBox(width: 10),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lina Jung',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'yoummyfood121@gmail.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                // todo
                ...categories
                    .map((category) => ListTile(
                          leading: Icon(
                            category['icon'],
                            color: Color(0xffff793d),
                            size: 25,
                          ),
                          title: Text(
                            category['name'],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/maps.png', // Replace with your image URL
                      width: double.infinity,
                      height: 540,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 16,
                        left: 16,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BreakfastBitesDetailsView();
                                }));
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                              ),
                            ),
                            SizedBox(width: 280),
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Color(0xFFfe7e00),
                            ),
                          ],
                        )),
                    Positioned(
                      top: 40,
                      left: 100,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 200,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 200,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 200,
                      right: 200,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 300,
                      right: 250,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                    Positioned(
                      top: 400,
                      right: 270,
                      child: Image.asset(
                        'assets/images/pin.png',
                        width: 60,
                      ),
                    ),
                  ],
                ),
              ),
              // todo
              Container(
                width: double.infinity,
                height: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  // todo
                  child: Column(
                    children: [
                      Text(
                        '10 minutes left',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0XFFfe7e00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Delivery to',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            ' Jl. Kpg Sutoyo',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                  'assets/images/pay_on_delivery.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'We deliver your goodies asap',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  ' to you in the shortes possible time.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      // todo
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child:
                                      Image.asset('assets/images/carrier.jpg')),
                            ),
                            Icon(Icons.call,
                                color: Color(0xffff793d), size: 20),
                            Text(
                              '021 -  1002 - 1214',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

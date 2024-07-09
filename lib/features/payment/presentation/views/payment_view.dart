// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, unnecessary_to_list_in_spreads

import 'package:final_project/features/category/presentation/views/breakfast_bites_details.dart';
import 'package:final_project/features/payment/presentation/views/success_order_view.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  PaymentView({super.key});

  static const routeName = 'payments';
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
          backgroundColor: const Color(0xffff793d),
          title: const Text(
            'Restaurant | payment',
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
                          child: const Column(
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
                            padding: EdgeInsets.only(left: 15),
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
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(
                              context, BreakfastBitesDetailsView.routeName);
                        },
                        child: Container(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Payment Options',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CartItem(),
                  // todo
                ],
              ),
            )),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xff1b1b20),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\$ 20.88 ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery fee ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\$10.00 ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Divider(
                    color: Color(0xfff27545),
                    indent: 29,
                    endIndent: 29,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Grand  Total ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$ 38.88 ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        // todo

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Credit and Debit Card',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xff1b1b20),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Container(
                width: 300,
                height: 150,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            'assets/images/visa.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '**** **** **** 2311',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff9e9e9f),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.delete,
                          color: Color(0xfff37545),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            'assets/images/master.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '**** **** **** 3255',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff9e9e9f),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.delete,
                          color: Color(0xfff37545),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),

        // todo

        Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: const Color(0xff1b1b20),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Container(
                width: 300,
                height: 200,
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                'assets/images/pay_on_delivery.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Pay on delivery',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff9e9e9f),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.delete,
                              color: Color(0xfff37545),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessOrderView(),
                              ),
                            );
                          },
                          child: Container(
                            width: 290,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xfff37545),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Pay Now',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

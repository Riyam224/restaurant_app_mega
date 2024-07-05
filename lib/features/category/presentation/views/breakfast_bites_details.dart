// ignore_for_file: avoid_unnecessary_containers, unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BreakfastBitesDetailsView extends StatelessWidget {
  BreakfastBitesDetailsView({super.key});

  static const routeName = "BreakfastBitesDetails";

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
        bottomNavigationBar: const GNav(
          gap: 8,
          backgroundColor: Color(0xff26262d),
          color: Color(0xffff793d),
          tabBackgroundColor: Color.fromARGB(255, 87, 77, 72),
          tabs: [
            GButton(icon: Icons.home),
            GButton(icon: Icons.favorite),
            GButton(icon: Icons.shopping_bag),
            GButton(icon: Icons.payment),
          ],
        ),
        // todo appbar
        appBar: AppBar(
          backgroundColor: Color(0xffff793d),
          title: const Text(
            'Restaurant |   Eggs with avoca salad',
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
        // todo drawer

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

        //  todo
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    // todo image
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        child: Image.asset(
                          'assets/images/egg_avo_sandwitch.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1000,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(19),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfff37545).withOpacity(0.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            // todo
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 327,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            // todo
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Eggs with avoca salad',
                                      style: TextStyle(
                                        color: Color(0xFF0A2533),
                                        fontSize: 20,
                                        fontFamily: 'Sofia Pro',
                                        fontWeight: FontWeight.w800,
                                        height: 0.06,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: const [
                                          Icon(Icons.timer),
                                          Text(
                                            '15 Min',
                                            style: TextStyle(
                                              color: Color(0xFF748189),
                                              fontSize: 14,
                                              fontFamily: 'Sofia Pro',
                                              fontWeight: FontWeight.w400,
                                              height: 0.10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // todo
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'This Healthy Egg with Avocado Salad is the universal delight food , gives you the energy you need .',
                                  style: TextStyle(
                                    color: Color(0xFF738189),
                                    fontSize: 16,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                //  todo
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          width: 30.37,
                                          height: 50.62,
                                          color: Colors.amber,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/Group1.png'),
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        Container(
                                            child: Text(
                                          '65g carbs',
                                          style: TextStyle(
                                            color: Color(0xFF0A2533),
                                            fontSize: 16,
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w400,
                                            height: 0.08,
                                          ),
                                        ))
                                      ],
                                    )),
                                    //  todo second row

                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          width: 30.37,
                                          height: 50.62,
                                          color: Colors.amber,
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/Group2.png'),
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        Container(
                                            child: Text(
                                          '27g proteins',
                                          style: TextStyle(
                                            color: Color(0xFF0A2533),
                                            fontSize: 16,
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w400,
                                            height: 0.08,
                                          ),
                                        ))
                                      ],
                                    )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ), // No text styles in this selection
              ),
            )
            // todo details

            ),
      ),
    );
  }
}

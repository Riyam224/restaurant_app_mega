// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_to_list_in_spreads, sized_box_for_whitespace

import 'package:final_project/features/home/presentation/widgets/category_cart_items_view.dart';
import 'package:final_project/features/home/presentation/widgets/category_text_list_view.dart';
import 'package:final_project/features/home/presentation/widgets/food_showcase_items_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  static const routeName = "home";

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
    return Scaffold(
      backgroundColor: const Color(0xff26262d),
      appBar: AppBar(
        backgroundColor: Color(0xffff793d),
        title: const Text(
          'Restaurant | Home',
          style: TextStyle(
            fontSize: 16,
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

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  width: double.infinity,
                  // height: 1000,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      // todo first row contains image text icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/images/user.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // todo
                                const SizedBox(width: 20),
                                Container(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Deliver to',
                                      style: TextStyle(
                                        color: Color(0xff6c6c6e),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      'Lina Jung , NY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications,
                                color: Colors.white, size: 30),
                          ),
                        ],
                      ),
                      // todo divider
                      SizedBox(
                        height: 2,
                      ),
                      Divider(
                        color: Color(0xff26262d),
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff26262d),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CategoryCartItemsView(),
                      Text(
                        'Some of Our Menu delivered to you',
                        style: TextStyle(
                          color: Color(0xff5b5b5c),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CategoryTextListView(),
                      SizedBox(
                        height: 30,
                      ),
                      FoodShowcaseItemsView(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            'welcome',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

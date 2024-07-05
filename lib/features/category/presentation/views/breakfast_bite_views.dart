// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:final_project/features/category/presentation/views/breakfast_bites_details.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BreakfastBiteViews extends StatelessWidget {
  BreakfastBiteViews({super.key});

  static const routeName = 'breakfast_bite';

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

  // todo

  final List<Map<String, dynamic>> items = [
    {
      "title": "Eggs with avoca salad",
      "image": "assets/images/egg_avo_sandwitch.jpg",
    },
    {
      "title": "Brown Toast Egg sandwitch",
      "image": "assets/images/egg_brown_toast.jpg",
    },
    {
      "title": "Red sauce with Egg",
      "image": "assets/images/egg_category.jpg",
    },
    {
      "title": "Cheese sandwitch",
      "image": "assets/images/egg_coffee_cheese.jpg",
    },
    {
      "title": "Croissant with Coffee",
      "image": "assets/images/egg_coffee_croissant.jpg",
    },
    {
      "title": "Tomato with Egg",
      "image": "assets/images/egg_tomato.jpg",
    },
    {
      "title": "Veggi with Egg",
      "image": "assets/images/egg_with_veggi.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff26262d),
      bottomNavigationBar: GNav(
        gap: 8,
        backgroundColor: Color(0xff26262d),
        color: Color(0xffff793d),
        tabBackgroundColor: Color.fromARGB(255, 87, 77, 72),
        tabs: const [
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
          'Restaurant | Breakfast Bites',
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
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: SizedBox(
          // height: ,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BreakfastItem(
                  title: items[index]['title'],
                  image: items[index]['image'],
                ),
              );
            },
          ),
        ),
      ),
      // todo
    ));
  }
}

class BreakfastItem extends StatelessWidget {
  BreakfastItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xff666668),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(width: 40),
            Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFff793d)),
                  onPressed: () {},
                  label: GestureDetector(
                    onTap: () {
                      // todo
                      Navigator.pushNamed(
                          context, BreakfastBitesDetailsView.routeName);
                    },
                    child: Text(
                      'more detail',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

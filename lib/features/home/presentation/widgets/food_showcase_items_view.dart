// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodShowcaseItemsView extends StatelessWidget {
  FoodShowcaseItemsView({super.key});

  final List<Map<String, dynamic>> showcaseItems = [
    {
      "image": "assets/images/appetizer1.jpg",
      "title": "Appetizer1",
    },
    {
      "image": "assets/images/breakfast.jpg",
      "title": "Breakfast",
    },
    {
      "image": "assets/images/drink11.jpg",
      "title": "D & smoothies",
    },
    {
      "image": "assets/images/c7.jpg",
      "title": "Pizza",
    },
    {
      "image": "assets/images/chicken_with_rice.jpg",
      "title": "F-chicken",
    },
    {
      "image": "assets/images/burger1.jpg",
      "title": "Burger",
    },
    {
      "image": "assets/images/des1.jpg",
      "title": "Dessert",
    },
    {
      "image": "assets/images/veggi1.jpg",
      "title": "Vegetarin Bites",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9.0,
            mainAxisExtent: 275,
          ),
          itemBuilder: (context, index) {
            // todo
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  width: 200,
                  height: 275,
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
                              '${showcaseItems.elementAt(index)['image']}',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                          width: double.infinity,
                          // TOdo inside column
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${showcaseItems.elementAt(index)['title']}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  'most delicious food',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xfff37545),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'more details',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      height: 3,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  )),
            );
          }),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 270,
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xfff37545),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'more details',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            height: 3,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

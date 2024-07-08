// ignore_for_file: sized_box_for_whitespace

import 'package:final_project/features/category/presentation/views/breakfast_bite_views.dart';
import 'package:flutter/material.dart';

class FoodShowcaseItemsView extends StatefulWidget {
  FoodShowcaseItemsView({super.key});

  @override
  State<FoodShowcaseItemsView> createState() => _FoodShowcaseItemsViewState();
}

class _FoodShowcaseItemsViewState extends State<FoodShowcaseItemsView> {
  final List<Map<String, dynamic>> showcaseItems = [
    {
      "id": 1,
      "image": "assets/images/appetizer1.jpg",
      "title": "Appetizer",
    },
    {
      "id": 2,
      "image": "assets/images/breakfast.jpg",
      "title": "Breakfast",
    },
    {
      "id": 3,
      "image": "assets/images/drink11.jpg",
      "title": "D & smoothies",
    },
    {
      "id": 4,
      "image": "assets/images/c7.jpg",
      "title": "Pizza",
    },
    {
      "id": 5,
      "image": "assets/images/chicken_with_rice.jpg",
      "title": "F-chicken",
    },
    {
      "id": 6,
      "image": "assets/images/burger1.jpg",
      "title": "Burger",
    },
    {
      "id": 7,
      "image": "assets/images/des1.jpg",
      "title": "Dessert",
    },
    {
      "id": 8,
      "image": "assets/images/veggi1.jpg",
      "title": "Vegetarin Bites",
    },
    {
      "id": 10,
      "image": "assets/images/asian food.jpg",
      "title": "Chinese Food",
    },
    {
      "id": 10,
      "image": "assets/images/korean food.jpg",
      "title": "Korean Food",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1120,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 1000),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9.0,
              mainAxisSpacing: 9.0,
              mainAxisExtent: 275,
            ),
            itemBuilder: (context, index) {
              // todo showcase items
              // final category = showcaseItems[index];
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
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return BreakfastBiteViews();
                                      }));
                                    },
                                    child: const Text(
                                      'click here',
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
      ),
    );
  }
}

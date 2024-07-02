// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class CategoryCartItemsView extends StatelessWidget {
  CategoryCartItemsView({super.key});

  final List<Map<String, Object>> items = [
    {
      "title": "Get 10% OFF",
      "image": "assets/images/c4.jpg",
    },
    {
      "title": "Enjoy it",
      "image": "assets/images/c2.jpg",
    },
    {
      "title": "Most yummy",
      "image": "assets/images/c8.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: 250,
                height: 200,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          '${items[index]['image']}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 15,
                        left: 10,
                        child: Text(
                          '${items[index]['title']}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Positioned(
                        top: 95,
                        right: 10,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          onPressed: () {},
                          child: const Text('order now',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

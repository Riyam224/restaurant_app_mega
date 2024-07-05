import 'package:flutter/material.dart';

class CategoryTextListView extends StatelessWidget {
  CategoryTextListView({super.key});

  final List<String> itemsText = [
    "Pizza",
    "Burger",
    "Pasta",
    "Frid Chicken",
    "Dessert",
    "Drinks"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: itemsText.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool isFirstItem = index == 0;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isFirstItem
                      ? const Color(0xffff793d)
                      : const Color(0xff26262d),
                ),
                child: Center(
                  child: Text(
                    itemsText[index],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

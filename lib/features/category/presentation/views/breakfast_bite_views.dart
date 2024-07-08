// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:final_project/core/models/item_model.dart';
import 'package:final_project/features/category/presentation/views/breakfast_bites_details.dart';
import 'package:flutter/material.dart';

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

  // final List<Map<String, dynamic>> items = [
  //   {
  //     "title": "Eggs with avoca salad",
  //     "image": "assets/images/egg_avo_sandwitch.jpg",
  //   },
  //   {
  //     "title": "Brown Toast Egg sandwitch",
  //     "image": "assets/images/egg_brown_toast.jpg",
  //   },
  //   {
  //     "title": "Red sauce with Egg",
  //     "image": "assets/images/egg_category.jpg",
  //   },
  //   {
  //     "title": "Cheese sandwitch",
  //     "image": "assets/images/egg_coffee_cheese.jpg",
  //   },
  //   {
  //     "title": "Croissant with Coffee",
  //     "image": "assets/images/egg_coffee_croissant.jpg",
  //   },
  //   {
  //     "title": "Tomato with Egg",
  //     "image": "assets/images/egg_tomato.jpg",
  //   },
  //   {
  //     "title": "Veggi with Egg",
  //     "image": "assets/images/egg_with_veggi.jpg",
  //   },
  // ];

  // todo

  final List<Item> items = [
    Item(
      name: 'Eggs with avoca salad',
      imageUrl: 'assets/images/egg_avo_sandwitch.jpg',
      description:
          'creamy, and so tasty. The avocado is so creamy, and the eggs keep me full for hours!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'avocado',
          imageUrl: 'assets/images/ingredients/1/avo.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/ingredients/1/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/ingredients/2/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/ingredients/1/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/ingredients/1/pepper.png',
        ),
      ],
    ),
    // todo  2

    Item(
      name: 'Scrambled Eggs with Smoked Trout and Crème Fraîche',
      imageUrl:
          'assets/images/ghk010124scrambledeggsthreeways-65942928cddc1.jpg',
      description:
          'Instantly class-up scrambled eggs with a few pieces of tinned smoked trout stirred in. Easy!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'avocado',
          imageUrl: 'assets/images/ingredients/1/avo.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/ingredients/1/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/ingredients/2/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/ingredients/1/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/ingredients/1/pepper.png',
        ),
      ],
    ),
    // todo 3

    Item(
      name: 'Sweet Potato Breakfast Burritos',
      imageUrl:
          'assets/images/sweet-potato-breakfast-burritos-64fa102ec946c.jpg',
      description: 'These are the perfect make-ahead breakfast.',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'potatos',
          imageUrl: 'assets/images/ingredients/3/potato.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/ingredients/1/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/ingredients/2/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/ingredients/1/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/ingredients/1/pepper.png',
        ),
      ],
    ),
    // todo 4

    Item(
      name: 'Almond-Buckwheat Granola with Yogurt and Berries',
      imageUrl:
          'assets/images/almond-buckwheat-granola-with-yogurt-and-berries-65722b7adc36e.jpg',
      description:
          'Meal prep a batch of 30-minute granola to top off yogurt and fruit all week.',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'granola',
          imageUrl:
              'assets/images/ingredients/4/gratis-png-muesli-granola-sembradora-mezcla-de-frutos-secos-miel-removebg-preview.png',
        ),
        Ingredient(
          name: 'yogurt',
          imageUrl:
              'assets/images/ingredients/4/healthy-breakfast-with-fresh-greek-yogurt-free-png.webp',
        ),
        Ingredient(
          name: 'berries',
          imageUrl:
              'assets/images/ingredients/4/pngtree-raspberries-png-image_4983781-removebg-preview.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
      ],
    ),

    // todo 5

    Item(
      name: 'Sweet Potatoes with Yogurt, Almond Butter and Pepita Granola',
      imageUrl: 'assets/images/super-stuffed-sweet-potatoes-657c6eb5cbe92.jpg',
      description: 'Try roasted sweet potato for breakfast',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'potatos',
          imageUrl: 'assets/images/ingredients/3/potato.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/ingredients/1/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/ingredients/2/egg.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/ingredients/1/pepper.png',
        ),
      ],
    ),
    // todo 6

    Item(
      name: 'Blueberry-Banana-Nut Smoothie',
      imageUrl: 'assets/images/blueberry-banana-nut-smoothie-1608662718.jpg',
      description:
          'With frozen berries and almond butter, this is like PB&J in smoothie form. Yum!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'blueberries',
          imageUrl: 'assets/images/ingredients/6/blueberries.png',
        ),
        Ingredient(
          name: 'banana',
          imageUrl: 'assets/images/ingredients/6/banana.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/ingredients/1/salt.png',
        ),
        Ingredient(
          name: 'nut',
          imageUrl: 'assets/images/ingredients/6/nut.png',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff26262d),

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
              ...categories.map((category) => ListTile(
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
                  )),
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
  const BreakfastItem({
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BreakfastBitesDetailsView();
                      }));
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

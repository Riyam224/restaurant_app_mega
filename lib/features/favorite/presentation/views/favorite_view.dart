import 'package:final_project/core/models/item_model.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  FavoriteView({super.key});

  static const routeName = "Favorite";

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

  final List<Item> items = [
    Item(
      name: 'Avocado Toast',
      imageUrl: 'assets/images/avo_toast.jpg',
      description:
          'creamy, and so tasty. The avocado is so creamy, and the eggs keep me full for hours!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'avocado',
          imageUrl: 'assets/images/avo.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/pepper.png',
        ),
      ],
    ),
    // todo  2

    Item(
      name: 'egg & coffee croissant',
      imageUrl: 'assets/images/egg_coffee_croissant.jpg',
      description:
          'Instantly class-up scrambled eggs with a few pieces of tinned smoked trout stirred in. Easy!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'avocado',
          imageUrl: 'assets/images/avo.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/pepper.png',
        ),
      ],
    ),
    // todo 3

    Item(
      name: 'Burger with fries',
      imageUrl: 'assets/images/burger3.jpg',
      description: 'These are the perfect make-ahead breakfast.',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'potatos',
          imageUrl: 'assets/images/potato.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/egg.png',
        ),
        Ingredient(
          name: 'olive oil',
          imageUrl: 'assets/images/oil.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/pepper.png',
        ),
      ],
    ),
    // todo 4

    Item(
      name: 'Granola with Berries',
      imageUrl: 'assets/images/c8.jpg',
      description:
          'Meal prep a batch of 30-minute granola to top off yogurt and fruit all week.',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'granola',
          imageUrl:
              'assets/images/gratis-png-muesli-granola-sembradora-mezcla-de-frutos-secos-miel-removebg-preview.png',
        ),
        Ingredient(
          name: 'yogurt',
          imageUrl:
              'assets/images/healthy-breakfast-with-fresh-greek-yogurt-free-png.webp',
        ),
        Ingredient(
          name: 'berries',
          imageUrl:
              'assets/images/pngtree-raspberries-png-image_4983781-removebg-preview.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
      ],
    ),

    Item(
      name: 'Sweet Potato Breakfast',
      imageUrl: 'assets/images/breakfast.jpg',
      description: 'Try roasted sweet potato for breakfast',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'potatos',
          imageUrl: 'assets/images/potato.png',
        ),
        Ingredient(
          name: 'bread',
          imageUrl: 'assets/images/bread.png',
        ),
        Ingredient(
          name: 'eggs',
          imageUrl: 'assets/images/egg.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'pepper',
          imageUrl: 'assets/images/pepper.png',
        ),
      ],
    ),
    // todo 6

    Item(
      name: 'Desert',
      imageUrl: 'assets/images/des1.jpg',
      description:
          'With frozen berries and almond butter, this is like PB&J in smoothie form. Yum!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'blueberries',
          imageUrl: 'assets/images/blueberries.png',
        ),
        Ingredient(
          name: 'banana',
          imageUrl: 'assets/images/banana.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'nut',
          imageUrl: 'assets/images/nut.png',
        ),
      ],
    ),

    Item(
      name: 'Ice Cream Cake',
      imageUrl: 'assets/images/ice cream cake.png',
      description:
          'With frozen berries and almond butter, this is like PB&J in smoothie form. Yum!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'blueberries',
          imageUrl: 'assets/images/blueberries.png',
        ),
        Ingredient(
          name: 'banana',
          imageUrl: 'assets/images/banana.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'nut',
          imageUrl: 'assets/images/nut.png',
        ),
      ],
    ),

    Item(
      name: 'Cupcake with chocolate',
      imageUrl: 'assets/images/cupcake.jpg',
      description:
          'With frozen berries and almond butter, this is like PB&J in smoothie form. Yum!',
      price: 9.99,
      ingredients: [
        Ingredient(
          name: 'blueberries',
          imageUrl: 'assets/images/blueberries.png',
        ),
        Ingredient(
          name: 'banana',
          imageUrl: 'assets/images/banana.png',
        ),
        Ingredient(
          name: 'salt',
          imageUrl: 'assets/images/salt.png',
        ),
        Ingredient(
          name: 'nut',
          imageUrl: 'assets/images/nut.png',
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
        backgroundColor: const Color(0xffff793d),
        title: const Text(
          'Restaurant | Favorite Items',
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
              // todo
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BreakfastItem(item: item),
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
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xff666668),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            // SizedBox(width: 40),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

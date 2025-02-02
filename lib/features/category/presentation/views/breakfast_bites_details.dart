// ignore_for_file: avoid_unnecessary_containers, unnecessary_to_list_in_spreads, sized_box_for_whitespace, prefer_const_constructors, unused_element, prefer_final_fields, prefer_const_constructors_in_immutables

import 'package:final_project/core/models/item_model.dart';
import 'package:final_project/features/cart/presentation/views/cart_view.dart';
import 'package:final_project/features/category/presentation/views/breakfast_bite_views.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BreakfastBitesDetailsView extends StatefulWidget {
  BreakfastBitesDetailsView({super.key, required this.item});

  final Item item;

  static const routeName = "BreakfastBitesDetails";

  @override
  State<BreakfastBitesDetailsView> createState() =>
      _BreakfastBitesDetailsViewState();
}

class _BreakfastBitesDetailsViewState extends State<BreakfastBitesDetailsView> {
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

  // todo related recipes
  final List<String> relatedRecipes = [
    "assets/images/appetizer2.jpg",
    "assets/images/breakfast.jpg",
    "assets/images/c3.jpg",
    "assets/images/related.jpg"
  ];

  // todo add to cart code
  List<Item> cartitem = [];

  void addToCart(Item item) {
    setState(() {
      cartitem.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff26262d),

        // todo appbar
        appBar: AppBar(
          backgroundColor: Color(0xffff793d),
          title: const Text(
            'Restaurant |    meal details',
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
                        ),
                      ),
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
              horizontal: 10,
              vertical: 25,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // todo arrow back

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, BreakfastBiteViews.routeName);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Container(
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                          // todo
                          widget.item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      // height: 1600,
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
                              horizontal: 10,
                            ),
                            // todo
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      // todo
                                      widget.item.name,
                                      style: TextStyle(
                                        color: Color(0xFF0A2533),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        height: 0.06,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.timer),
                                          Text(
                                            '\$${widget.item.price.toStringAsFixed(2)} ',
                                            style: TextStyle(
                                              color: Color(0xFFf27545),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              height: 0.10,
                                            ),
                                          ),
                                          Text(
                                            '15 Min',
                                            style: TextStyle(
                                              color: Color(0xFF748189),
                                              fontSize: 12,
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
                                const SizedBox(
                                  height: 10,
                                ),
                                // todo
                                Text(
                                  widget.item.description,
                                  style: TextStyle(
                                    color: Color(0xFF738189),
                                    fontSize: 16,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
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
                                          width: 50.37,
                                          height: 50.62,
                                          color: Color(0xFFf37545)
                                              .withOpacity(0.5),
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
                                          width: 50.37,
                                          height: 50.62,
                                          color: Color(0xFFf37545)
                                              .withOpacity(0.5),
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
                                ),

                                const SizedBox(
                                  height: 33,
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          width: 50.37,
                                          height: 50.62,
                                          color: Color(0xFFf37545)
                                              .withOpacity(0.5),
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/Group3.png'),
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        Container(
                                            child: Text(
                                          '120 Kcal',
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
                                          width: 50.37,
                                          height: 50.62,
                                          color: Color(0xFFf37545)
                                              .withOpacity(0.5),
                                          child: Center(
                                            child: Image.asset(
                                                'assets/images/Group4.png'),
                                          ),
                                        ),
                                        SizedBox(width: 24),
                                        Container(
                                            child: Text(
                                          '27g proteins',
                                          style: TextStyle(
                                            color: Color(0xFF0A2533),
                                            fontSize: 16,
                                            fontFamily: '91g fats',
                                            fontWeight: FontWeight.w400,
                                            height: 0.08,
                                          ),
                                        ))
                                      ],
                                    )),
                                  ],
                                )
                                // todo
                                ,
                                SizedBox(
                                  height: 33,
                                ),
                                // todo ingredients and instructions
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff37545),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Ingredients',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0.08,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xff26262d),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Instructions',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Sofia Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0.08,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // todo ingredients and instructions
                                SizedBox(
                                  height: 24,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Ingredients',
                                        style: TextStyle(
                                          color: Color(0xFF0A2533),
                                          fontSize: 20,
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.w800,
                                          height: 0.07,
                                        ),
                                      ),
                                      Text(
                                        'Add All to Cart',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF6FB9BE),
                                          fontSize: 16,
                                          fontFamily: 'Sofia Pro',
                                          fontWeight: FontWeight.w800,
                                          height: 0.08,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 24),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 100,
                                          height: 20,
                                          child: Text(
                                            '5 Item',
                                            style: TextStyle(
                                              color: Color(0xFF748189),
                                              fontSize: 16,
                                              fontFamily: 'Sofia Pro',
                                              fontWeight: FontWeight.w400,
                                              height: 0.09,
                                            ),
                                          )),
                                      Container()
                                    ],
                                  ),
                                ),
// todo ingredients
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 24),
                                  child: SizedBox(
                                    height: 400,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      // physics:
                                      //     NeverScrollableScrollPhysics(),
                                      itemCount: widget.item.ingredients.length,
                                      itemBuilder: (context, index) {
                                        // todo IngredientItems
                                        final ingredient =
                                            widget.item.ingredients[index];
                                        return IngredientItems(
                                          image: ingredient.imageUrl,
                                          name: ingredient.name,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                // todo
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 24),
                                  child: Column(
                                    children: [
                                      // todo
                                      GestureDetector(
                                        onTap: () {
                                          // todo add to cart
                                          addToCart(widget.item);
                                        },
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return CartView();
                                            }));
                                          },
                                          child: Container(
                                            width: 250,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Color(0xfff37545),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Add To Cart',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Sofia Pro',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0.08,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: 48,
                                ),
// todo related food

                                Text(
                                  'Related Recipes',
                                  style: TextStyle(
                                    color: Color(0xFF0A2533),
                                    fontSize: 20,
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w800,
                                    height: 0.07,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 24,
                                    ),
                                    // todo
                                    child: SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: relatedRecipes.length,
                                        itemBuilder: (context, index) {
                                          return RelatedItems(
                                            image: relatedRecipes[index],
                                          );
                                        },
                                      ),
                                    )),
                                // SizedBox(
                                //   height: 200,
                                // ),
                              ],
                            ),
                          ),
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

// todo IngredientItems
class IngredientItems extends StatelessWidget {
  const IngredientItems({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 600,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff37545).withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: double.infinity,
                      child: Image.asset(
                        // todo image
                        image,
                      ),
                    ),
                    SizedBox(width: 24),
                    Center(
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Color(0xFF0A2533),
                          fontSize: 20,
                          fontFamily: 'Sofia Pro',
                          fontWeight: FontWeight.w800,
                          height: 0.06,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Color(0xfff37545),
                              ),
                            ),
                          ),
                        ),
                        Text('2'),
                        Container(
                          width: 30,
                          height: 30,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Color(0xfff37545),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class RelatedItems extends StatelessWidget {
  const RelatedItems({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

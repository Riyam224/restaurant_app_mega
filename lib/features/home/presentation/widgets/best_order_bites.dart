// // ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BestOrderBites extends StatelessWidget {
//   BestOrderBites({super.key});
//   static const routeName = "BestOrderBites";

//   final List<Map<String, dynamic>> items = [
//     {
//       "title": "Bread and Fried Eggs",
//       "image": "assets/images/egg_category.jpg",
//       "category": "breakfast",
//       "price": "\$20.99"
//     },
//     {
//       "title": "Chicken Burger",
//       "image": "assets/images/chicken_burger_chicken_categ.jpg",
//       "category": "burger",
//       "price": "\$24.99",
//     },
//     {
//       "title": "Vegi Salad",
//       "image": "assets/images/veggi1.jpg",
//       "category": "veggi",
//       "price": "\$25.99",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SizedBox(
//       height: 150,
//       child: ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                   width: 500,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     color: Color(0xff1b1b20),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 150,
//                         height: 150,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(10),
//                             bottomLeft: Radius.circular(10),
//                           ),
//                           child: Image.asset("${items[index]['image']}",
//                               fit: BoxFit.cover),
//                         ),
//                       ),
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 25),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '${items[index]['title']}',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     '${items[index]['category']}  /  ',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   Text(
//                                     '${items[index]['price']}',
//                                     style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                       // todo
//                     ],
//                   )),
//             );
//           }),
//     ));
//   }
// }


// // Text(
//                         'Some of Our yummy bites',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       // BestOrderBites(),
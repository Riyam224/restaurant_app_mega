// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';

// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({super.key});

//   static const routeName = 'onBoarding';

//   @override
//   State<OnBoardingView> createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   // todo
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         onPageChanged: (index) {
//           setState(
//             () {
//               _currentPage = index;
//             },
//           );
//         },
//         // todo
//         children: [
//           Container(
//               height: 200,
//               width: 200,
//               color: Colors.orange,
//               child: Image.asset(
//                 'assets/images/drink1.jpg',
//                 fit: BoxFit.cover,
//               )),
//           Container(color: Colors.green),
//           Container(color: Colors.red)
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         currentIndex: _currentPage,
//         onTap: (index) {
//           _pageController.animateToPage(
//             index,
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//           );
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Page 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Page 3',
//           ),
//         ],
//       ),
//     );
//   }

//   // todo function to control the data in the page view
//   Widget _buildPage(Color color, String title, String subtitle, String image) {
//     return Container(
//       color: color,
//       child: Center(
//         child: Column(
//           children: [Text(title), Text(subtitle), Image.asset(image)],
//         ),
//       ),
//     );
//   }
// }

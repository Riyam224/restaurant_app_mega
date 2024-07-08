import 'package:final_project/features/cart/presentation/views/cart_view.dart';
import 'package:final_project/features/category/presentation/views/breakfast_bite_views.dart';
import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:final_project/features/payment/presentation/views/track_order_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  static const routeName = 'myApp';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    BreakfastBiteViews(),
    CartView(),
    OrderMap(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff26262d),
          selectedItemColor: Color(0xffff793d),
          unselectedItemColor: Colors.grey,
          elevation: 10,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Icon(Icons.category),
              ),
              label: 'Detail',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: const Icon(Icons.shopping_bag),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: const Icon(Icons.track_changes),
              ),
              label: 'Track',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

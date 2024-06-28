// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "home";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          _buildPage('Page 1', Colors.blue),
          _buildPage('Page 2', Colors.green),
          _buildPage('Page 3', Colors.red),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    // Navigate to a different screen or perform some other action
                    print('Navigating away from the PageView');
                  }
                },
                child: Text(
                  _currentPage < 2 ? 'Skip' : 'Finish',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
        color: Colors.black,
      ),
    );
  }

  Widget _buildPage(String text, Color color) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

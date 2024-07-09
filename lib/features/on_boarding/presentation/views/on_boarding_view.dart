// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

import 'package:final_project/navbar.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const routeName = 'onBoarding';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  // todo
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
          // todo first page
          Container(
            width: double.infinity,
            height: double.infinity,
            //todo
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Center(
                      child: Text(
                        'Get Food Delivered \n to Your Doorstep ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff793d),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.asset(
                        'assets/images/Young man ordering food online.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      width: double.infinity,
                      child: SizedBox(
                        width: 316,
                        height: 95,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Our food delivery app makes it easy to order from your favorite restaurants and have your meals delivered to your doorstep.',
                            style: TextStyle(
                              backgroundColor: Color(0xffff793d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),

          // todo / page 2
          Container(
            width: double.infinity,
            height: double.infinity,
            //todo
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Center(
                      child: Text(
                        'Discover New\n Restaurants and\n Cuisines with Our App',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff793d),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Image.asset(
                        'assets/images/map marker.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      width: double.infinity,
                      child: SizedBox(
                        width: 316,
                        height: 95,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Our food delivery app not only allows you to order from your favorite restaurants but also gives you the opportunity to discover new places to eat.',
                            style: TextStyle(
                              backgroundColor: Color(0xffff793d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),

          // todo page3

          Container(
            width: double.infinity,
            height: double.infinity,
            //todo
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Center(
                      child: Text(
                        'Experience Convenient\n and Fast Food Delivery\n with Our App',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffff793d),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.asset(
                        'assets/images/Food delivery.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      width: double.infinity,
                      child: SizedBox(
                        width: 316,
                        height: 95,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze.',
                            style: TextStyle(
                              backgroundColor: Color(0xffff793d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
      // todo navigation bar
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}

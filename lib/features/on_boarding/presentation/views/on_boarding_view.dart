// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

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
            color: Color(0xff151518),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Stack(
                      children: [
                        Container(
                          color: Color(0xff151518),
                        ),
                        Positioned(
                          top: 50,
                          child: Container(
                            width: 200,
                            height: 150,
                            child: Transform.rotate(
                              angle: 75.00,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/pizza1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200,
                          child: Container(
                            width: 200,
                            height: 150,
                            child: Transform.rotate(
                              angle: 75.00,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/pizza2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 400,
                          left: 100,
                          child: Container(
                            width: 200,
                            height: 150,
                            child: Transform.rotate(
                              angle: 75.00,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/drink4.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 49,
                          right: 4,
                          child: Container(
                            width: 200,
                            height: 150,
                            child: Transform.rotate(
                              angle: 26.00,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/burger2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Center(
                          child: Text(
                            'Enjoy the Best food experience ever',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          // todo / page 2
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  'assets/images/pizza1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  width: 400,
                  height: 100,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 100),
                    child: Text(
                      'Satisfy your cravings with food made to lift your mood.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // todo page3

          Container(
            height: 400,
            width: 200,
            color: Color(0xff151518),
            child: Image.asset(
              'assets/images/on_b1.jpg',
              fit: BoxFit.cover,
            ),
          )
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
                    Navigator.pushReplacementNamed(context, 'myApp');
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white),
                  ),
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
        color: Color(0xff151518),
      ),
    );
  }
}

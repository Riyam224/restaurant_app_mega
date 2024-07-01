// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_final_fields

import 'package:final_project/features/auth/presentation/views/register_view.dart';
import 'package:final_project/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // String _registedEmail = '';
  // String _registerPassword = '';
  // // todo
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // void _login() {
  //   String enteredEmeil = _emailController.text;
  //   String enteredPassword = _passwordController.text;

  //   //  todo navigate to home
  //   if (enteredEmeil == _registedEmail &&
  //       enteredPassword == _registerPassword!) {
  //     Navigator.pushReplacementNamed(context, HomeView.routeName);
  //   } else {
  //     // todo show  error message
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Invalid email or password')));
  //   }

  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            const Text('Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Please login to your account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              //
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff1b1b20),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Center(
                  // todo
                  child: TextField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(
                        color: Color(0xff838386),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xff1b1b20),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Center(
                  // todo

                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xff838386),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            // todo
            GestureDetector(
              onTap: () {
                if (_emailController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  Navigator.pushNamed(context, HomeView.routeName);
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Theme(
                          data: ThemeData(
                              dialogTheme: DialogTheme(
                            backgroundColor: Color(0xff26262d),
                          )),
                          child: AlertDialog(
                            title: Text(
                              'Error',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            content: Text(
                              ' please fill the fields  ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ));
                    },
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xff26262d),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have an account ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RegisterView.routeName);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffb70f0f),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

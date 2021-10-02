// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      foregroundImage: AssetImage('images/user_login.png')),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text('Email'),
                            prefixIcon: Icon(Icons.email),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 30),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 30),
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      Container(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Don\'t have an account ? '),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('signup');
                              },
                              child: Text(
                                'Sign up.',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

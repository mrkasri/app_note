// ignore_for_file: prefer_const_constructors

import 'package:app_note/auth/login.dart';
import 'package:app_note/auth/sign_up.dart';
import 'package:flutter/material.dart';

final ThemeData myAppTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Colors.blue[500],
  primaryColorBrightness: Brightness.light,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note',
      theme: myAppTheme,
      home: const Login(),
      routes: {"login": (context) => Login(), "signup": (context) => SignUp()},
    );
  }
}

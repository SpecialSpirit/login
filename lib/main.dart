import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'EATsome',
      debugShowCheckedModeBanner: false,
      home:const loginpage(),
    );
  }
}
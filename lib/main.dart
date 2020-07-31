import 'package:flutter/material.dart';
import 'package:login_clipper_path/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Clipper Path',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SFPro'
      ),
      home: LoginPage(),
    );
  }
}
import 'package:demo_project/screens/homescreen.dart';
import 'package:demo_project/screens/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Wallet());
}

class Wallet extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Second(),
    );
  }
}

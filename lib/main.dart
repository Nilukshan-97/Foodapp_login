import 'package:auth_tamil/constants.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

//v63lkAw3U5Uzf05UgzQXu9Tgvus1
void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}

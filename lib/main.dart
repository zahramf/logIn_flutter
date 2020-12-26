import 'package:flutter/material.dart';
import 'package:login_p/constans.dart';
// ignore: unused_import
import 'package:login_p/screens/Welcom/welcom_screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Text("MMM"),
    );
  }
}

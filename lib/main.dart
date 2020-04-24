import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/shared/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

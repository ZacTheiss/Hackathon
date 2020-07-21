import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() async {
  runApp(MyApp());
} //=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID Combater',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';

void main() async {
  int port = 8085;
  var server = await HttpServer.bind('localhost', port);
  Db db = Db('mongodb://localhost:27017/test');
  await db.open();

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

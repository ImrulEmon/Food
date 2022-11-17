import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food/constants/colors.dart';
import 'package:food/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: fdBGColor));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

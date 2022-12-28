import 'package:flutter/material.dart';
import 'package:newsapp/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Snack',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: HomePageView(),
    );
  }
}

import 'package:book_tracker/screens/get_started_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(),
    );
  }
}

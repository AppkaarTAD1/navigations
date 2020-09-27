import 'package:flutter/material.dart';
import 'navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'فلاتر اپ بار';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
    );
  }
}
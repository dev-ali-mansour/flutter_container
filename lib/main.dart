import 'package:flutter/material.dart';
import 'package:flutter_container/ui/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Container',
      home: new HomePage(),
    );
  }
}

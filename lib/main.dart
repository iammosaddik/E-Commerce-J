import 'package:flutter/material.dart';
import 'package:jakir_ui/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mosaddik Ali',
      home: BottomNavBar(),
    );
  }
}

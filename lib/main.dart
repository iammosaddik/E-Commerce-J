import 'package:flutter/material.dart';
import 'package:jakir_ui/UI%20Page/Sign%20In/sign_in_page.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mosaddik Ali',
      home: SignIn(),
    );
  }
}

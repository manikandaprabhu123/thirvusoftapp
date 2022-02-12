import 'package:flutter/material.dart';
import 'views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      home: splash_screen(),
    );
  }
}

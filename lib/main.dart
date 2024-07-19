import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/splashscreen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 255, 173)
      ),
      home: SplashScreen(),
    );
  }
}
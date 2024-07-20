import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/cartscreen.dart';
import 'package:shopping_app/Screens/homescreen.dart';
import 'package:shopping_app/Screens/profilescreen.dart';
import 'package:shopping_app/Screens/splashscreen.dart';
import 'package:shopping_app/Screens/wishlistscreen.dart';

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
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
    '/home': (context) => HomeScreen(),
    '/wishlist': (context) => WishlistScreen(),
    '/my_profile': (context) => ProfileScreen(),
    '/cart': (context) => CartScreen(),
  },
    );
  }
}
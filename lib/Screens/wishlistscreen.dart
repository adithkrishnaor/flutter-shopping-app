import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navbar.dart';

class WishlistScreen extends StatefulWidget {
  
  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int _currentIndex = 1; 
 // Initialize with the correct index
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Navigate to corresponding screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Wishlist Screen'),
      ),

      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
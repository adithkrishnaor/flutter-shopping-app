import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  int _currentIndex = 2; // Initialize with the correct index

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
        child: Text('Profile Screen'),
      ),

      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
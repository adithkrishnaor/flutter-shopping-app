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
      body: const SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/images/personprofileicon.png'), // Replace with your image asset
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'email@gmail.com', // Replace with the user's email
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    size: 40,
                  ),
                  title: Text('My Orders'),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_offer_outlined,
                    size: 40,
                  ),
                  title: Text('Promocodes'),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 40,
                  ),
                  title: Text('Shipping Address'),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    size: 40,
                  ),
                  title: Text('Payment Methods'),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  title: Text('Settings'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}

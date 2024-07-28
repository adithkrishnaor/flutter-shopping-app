import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navbar.dart';
import 'package:shopping_app/Screens/settings_screen.dart';
import 'package:shopping_app/db/functions/db_functions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List userdata = [];
  @override
  void initState() {
    userDetails();
    super.initState();
  }

  void userDetails() async {
    userdata = await getUser();
    setState(() {});
  }

  int _currentIndex = 2; // Initialize with the correct index

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Navigate to corresponding screen
  }

  @override
  Widget build(BuildContext context) {
    print(userdata);
    return Scaffold(
      body: Container(
        color: Color.fromARGB(121, 238, 229, 233),
        child: SafeArea(
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
                        'name',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'email',
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
                    onTap: () {
                      // Navigate to settings screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings_Screen()),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  void navigateToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Settings_Screen()),
    );
  }
}

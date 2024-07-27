import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navbar.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _currentIndex = 3;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Your Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Image.asset('assets/images/laptop1.jpeg'),
              title: Text('MacBook'),
              subtitle: Text('Price: ₹1,07,990'),
              trailing: Text('Quantity: 1'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add payment logic here
              },
              child: Text('Checkout'),
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

import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/cartscreen.dart';

class Elect_Details extends StatelessWidget {
  const Elect_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laptop'),
        backgroundColor:Color.fromARGB(121, 238, 229, 233),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(121, 238, 229, 233),
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg'),
              const SizedBox(height: 16),
              Text(
                'MacBook',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Apple MacBook Air Apple M3 - (8 GB/256 GB SSD/macOS Sonoma) MRXQ3HN/A  (13 Inch, Silver, 1.24 Kg)',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              Text(
                '''Highlights
                  
          - Stylish and Portable Thin and Light Laptop
          13 Inch Liquid Retina display, LED-backlit Display with IPS Technology,
          - Native Resolution at 224 pixels per inch, 500 nits Brightness
          - Light Laptop without Optical Disk Drive''',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 56, 56, 56),
                ),
              ),
          
              Expanded(child: Container()), // Add this line
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price: ₹1,07,990',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 40),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      );
                    },
                    child: const Text('Buy Now'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

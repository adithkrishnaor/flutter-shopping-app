import 'package:flutter/material.dart';

class Appliances_Screen extends StatelessWidget {
  const Appliances_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appliances'
        ),
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/appliances_1.jpeg',
              height: 130,
              ),
              Text('Smart TV'),
              Text('Rs. 40,999'),
              ],
          )
        )
      ],),
    );
  }
}
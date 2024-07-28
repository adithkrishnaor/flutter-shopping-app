import 'package:flutter/material.dart';

class Appliances_Screen extends StatelessWidget {
  const Appliances_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appliances',
        ),
        backgroundColor: Color.fromARGB(121, 238, 229, 233),
      ),
      body: Container(
        color: Color.fromARGB(121, 238, 229, 233),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/appliances_1.jpeg',
                  height: 130,
                ),
                Text('Smart TV'),
                Text('Rs. 40,999'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

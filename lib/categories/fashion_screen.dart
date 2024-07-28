import 'package:flutter/material.dart';

class Fashion_Screen extends StatelessWidget {
  const Fashion_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion'),
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
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            )),
            Card(
                child: Column(
              children: [
                Image.asset(
                  'assets/images/fashion1.jpeg',
                  height: 130,
                ),
                Text('Phone'),
                Text('Rs. 10000'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

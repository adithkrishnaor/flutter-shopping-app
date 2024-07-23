import 'package:flutter/material.dart';

class Electronics_Screen extends StatelessWidget {
  const Electronics_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Electronics'
        ),
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('Phone'),
              Text('Rs. 10000'),
              ],
          )
        )
      ],),
    );
  }
}
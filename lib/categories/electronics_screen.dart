import 'package:flutter/material.dart';
import 'package:shopping_app/product_details/elect_details.dart';

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
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Elect_Details()),
              );
          },
          child: Card(
            child: Column(
              children: [
                Image.asset('assets/images/laptop1.jpeg',
                height: 130,
                ),
                Text('MacBook'),
                Text('₹1,07,990'),
                ],
            )
          ),
        ),
        Card(
          child: Column(
            children: [
              Image.network('https://www.maplestore.in/cdn/shop/files/iPhone_15_Blue_PDP_Image_Position-1__en-IN_9d151e10-d809-499c-95cd-5c7cb7ea9dbe.jpg?v=1701822313&width=1445',
              height: 130,
              ),
              Text('iPhone'),
              Text('₹69,399'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.network('https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1709103161/Croma%20Assets/Communication/Mobiles/Images/275155_z2t6g2.png?tr=w-600',
              height: 130,
              ),
              Text('S23 Ultra'),
              Text('₹104999'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('MacBook'),
              Text('₹1,07,990'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/laptop1.jpeg',
              height: 130,
              ),
              Text('MacBook'),
              Text('₹1,07,990'),
              ],
          )
        ),
        Card(
          child: Column(
            children: [
              Image.network('https://www.maplestore.in/cdn/shop/files/iPhone_15_Blue_PDP_Image_Position-1__en-IN_9d151e10-d809-499c-95cd-5c7cb7ea9dbe.jpg?v=1701822313&width=1445',
              height: 130,
              ),
              Text('iPhone'),
              Text('₹69,399.00'),
              ],
          )
        )
      ],),
    );
  }
}
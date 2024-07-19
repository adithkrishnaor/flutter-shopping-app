import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState!
              .openDrawer(), // Use the key to open the drawer
        ),
        automaticallyImplyLeading: false,
        title: const Text('AKART'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 173),
        actions: [
    Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 25, 147, 102)), // Change the color to red
      ),
      child: IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {
          // Handle tap on cart icon
        },
      ),
    ),
  ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 120,
              child: const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 0, 255, 173)
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.all(15),
                child: Text('AKART',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),),
              ),
            ),
            ListTile(
              title: Text('Latest Offers'),
              onTap: () {
                // Handle tap on item 1
              },
            ),
            ListTile(
              title: Text('My Orders'),
              onTap: () {
                // Handle tap on item 2
              },
            ),
            ListTile(
              title: Text('My Account'),
              onTap: () {
                // Handle tap on item 3
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/carouseltemp.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/carouseltemp2.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/flutter_banner_onlyflutter.png'),
                          fit: BoxFit.cover,
                        )),
                  )
                ],
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                ),
              ),
            Text('Home Screen'),
          ],
        ),
      ),
    );
  }
}

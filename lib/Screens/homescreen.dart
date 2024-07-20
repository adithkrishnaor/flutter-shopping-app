import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navbar.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Navigate to corresponding screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('AKART'),
        backgroundColor: const Color.fromARGB(255, 0, 255, 173),
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

            SizedBox(
              height: 30,
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 3 / 2,
              children: [
                CategoryCard('Electronics', Icons.phone_android),
                CategoryCard('Fashion', Icons.shopping_bag_outlined),
                CategoryCard('Personal Care', Icons.face),
                CategoryCard('Appliances', Icons.kitchen_outlined),
                CategoryCard('Grocery', Icons.local_grocery_store_outlined),
                CategoryCard('Toys', Icons.toys_outlined),
              ],
            ),

            //Text('Home Screen'),
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

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;

  CategoryCard(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 0, 255, 173),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50),
          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

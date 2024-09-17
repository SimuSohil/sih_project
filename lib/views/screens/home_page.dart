import 'package:flutter/material.dart';
import 'package:statueist/constants.dart';
import 'package:statueist/views/bottom_nav/blogs.dart';
import 'package:statueist/views/bottom_nav/home.dart';
import 'package:statueist/views/bottom_nav/recents.dart';
import 'package:statueist/views/bottom_nav/shop.dart';
import 'package:statueist/views/bottom_nav/translate.dart';
import 'package:statueist/views/screens/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetPages = <Widget>[
      const HomeScreen(),
      const RecentsPage(),
      const BlogsPage(),
      const ShopPage(),
      const TranslatePage(),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: const Text('Statueist', style: TextStyle(fontWeight: FontWeight.w700)),
          backgroundColor: AppColors.color1,
        ),
      ),
      drawer: const DrawerSection(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Recents'),
            BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Blogs'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.translate), label: 'Translate'),
          ],
          backgroundColor: const Color(0xffE64C4C),
          selectedItemColor: AppColors.color3,
          unselectedItemColor: AppColors.color2,
          currentIndex: _bottomNavIndex,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
      ),
      body: widgetPages[_bottomNavIndex]
    );
  }
}
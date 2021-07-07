import 'package:flutter/material.dart';

import 'package:dejaladieta/src/pages/front_page.dart';
import 'package:dejaladieta/src/pages/challenges_page.dart';
import 'package:dejaladieta/src/pages/contact_page.dart';
import 'package:dejaladieta/src/pages/cart_page.dart';
import 'package:dejaladieta/src/pages/account/account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pageBottomBar = [
    FrontPage(),
    ChallengesPage(),
    ContactPage(),
    CartPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F4F8),
      appBar: AppBar(
        title: Text(
          'Dejaladieta',
          style: TextStyle(
            fontFamily: 'Playlist',
            fontSize: 35,
            color: Color(0xFFE04386),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFFD0E6),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageBottomBar,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFD0E6),
        onTap: _onItemTapped,
        items: [
          _bottomItem('assets/images/icons/home.png', 'Home'),
          _bottomItem('assets/images/icons/challenges.png', 'Retos'),
          _bottomItem('assets/images/icons/contact.png', 'Contacto'),
          _bottomItem('assets/images/icons/cart.png', 'Carrito'),
          _bottomItem('assets/images/icons/account.png', 'Cuenta'),
        ],
      ),
    );
  }

  _bottomItem(String image, String title) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        image,
        width: 27.0,
      ),
      label: title,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';
import 'src/pages/front_page.dart';
import 'src/pages/challenges_page.dart';
import 'src/pages/contact_page.dart';
import 'src/pages/cart_page.dart';
import 'src/pages/account_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dejaladieta - Aprende a comer saludable.',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'home': (BuildContext context) => FrontPage(),
        'challenges': (BuildContext context) => ChallengesPage(),
        'contact': (BuildContext context) => ContactPage(),
        'cart': (BuildContext context) => CartPage(),
        'account': (BuildContext context) => AccountPage(),
      },
    );
  }
}

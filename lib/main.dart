import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';
import 'src/pages/challenges_page.dart';
import 'src/pages/cart_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'challenges': (BuildContext context) => ChallengesPage(),
        'cart': (BuildContext context) => CartPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<dynamic> _faqs = generateItems(12);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 40.0),
        child: Column(
          children: [
            Text(
              'Sabemos que siempre existen dudas.',
              style: TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 21.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Contáctanos por:',
              style: TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 21.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD0E6),
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: _iconBox('assets/images/icons/facebook.png',
                      'https://www.facebook.com/DejaLaDieta/'),
                ),
                SizedBox(width: 10.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD0E6),
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: _iconBox('assets/images/icons/email.png',
                      'mailto:ivriosg@gmail.com'),
                ),
                SizedBox(width: 10.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD0E6),
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: _iconBox('assets/images/icons/instagram.png',
                      'https://www.instagram.com/dejaladieta/'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Preguntas Frecuentes',
              style: TextStyle(
                fontFamily: 'Roboto-Medium',
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 20.0),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _faqs[index].isExpanded = !isExpanded;
                });
              },
              children: _faqs.map<ExpansionPanel>((dynamic item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.headerValue),
                    );
                  },
                  body: ListTile(
                    title: Text(item.expandedValue),
                  ),
                  isExpanded: item.isExpanded,
                  canTapOnHeader: true,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  _iconBox(String image, String socialLink) {
    return IconButton(
      onPressed: () {
        var link = socialLink;
        launch(link);
      },
      icon: Image.asset(
        image,
      ),
      iconSize: 30.0,
      padding: EdgeInsets.all(15.0),
    );
  }
}

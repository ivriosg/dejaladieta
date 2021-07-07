import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _mainBox(),
            SizedBox(height: 20.0),
            _challenges(),
            SizedBox(height: 20.0),
            _aboutMe(),
          ],
        ),
      ),
    );
  }

  _mainBox() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.5,
          ],
          colors: [
            Color(0xFFFFD0E6),
            Color(0xFFFFBBD8),
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aprende a comer saludable.',
                  style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 19.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'El siguiente reto inicia en:',
                  style: TextStyle(
                    fontFamily: 'Roboto-Light',
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '07 Días'.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Roboto-Bold',
                    fontSize: 19.0,
                  ),
                ),
                SizedBox(height: 5.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                    primary: Color.fromRGBO(255, 255, 255, 0.8),
                    shadowColor: Color(0xFF000000),
                    elevation: 10.0,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'challenges');
                  },
                  child: Text(
                    'Ver Retos'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Roboto-Medium',
                      fontSize: 18.0,
                      color: Color(0xFFE04386),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/clock.png',
            fit: BoxFit.cover,
            width: 125.0,
          )
        ],
      ),
    );
  }

  _challenges() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Retos Destacados',
          style: TextStyle(
            fontFamily: 'Roboto-Medium',
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.20),
                  blurRadius: 4.0,
                  spreadRadius: 0.0),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reto Pareja',
                      style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Ideal para iniciar tu cambio a una vida mas saludable.',
                      style: TextStyle(
                        fontFamily: 'Roboto-Light',
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5.0),
              Image.asset(
                'assets/images/challenges/single.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.20),
                  blurRadius: 4.0,
                  spreadRadius: 0.0),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/challenges/couple.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              SizedBox(width: 1.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Reto Pareja',
                      style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Acompañado siempre es mejor, busca a tu pareja y únete.',
                      style: TextStyle(
                        fontFamily: 'Roboto-Light',
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _aboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sobre Mi',
          style: TextStyle(
            fontFamily: 'Roboto-Medium',
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Image.asset(
              'assets/images/annie.png',
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hola soy,',
                    style: TextStyle(
                      fontFamily: 'Roboto-Light',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Annie Martínez.',
                    style: TextStyle(
                      fontFamily: 'Roboto-Medium',
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Nutriologa y Educadora de diabetes.',
                    style: TextStyle(
                      fontFamily: 'Roboto-Light',
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

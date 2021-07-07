import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F4F8),
      body: Container(
        child: Column(
          children: [
            _topBanner(),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  _topBanner() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: Color(0xFFFFD0E6),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Iniciar Sesión',
            style: TextStyle(
              fontFamily: 'Playlist',
              color: Color(0xFFE04386),
              fontSize: 50.0,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xFFE04386),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              'assets/images/verify.png',
              width: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  _loginForm() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 127.0, 20.0, 20.0),
      padding: EdgeInsets.fromLTRB(30, 50, 30, 45),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.20),
              blurRadius: 4.0,
              spreadRadius: 0.0),
        ],
      ),
      child: Form(
        key: _key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email / Usuario'.toUpperCase(),
                labelStyle: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password'.toUpperCase(),
                labelStyle: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ENTRAR',
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 10.0,
                  ),
                  primary: Color(0xFFE04386),
                  shape: StadiumBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'sign-in');
              },
              child: Text(
                '¿NO TIENES CUENTA?',
                style: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  color: Color(0xFFE04386),
                  fontSize: 15.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                primary: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
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
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/images/challenges/challenge-single.png',
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'RETO INDIVIDUAL',
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize: 17.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '\$500',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular',
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(15.0),
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
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/images/challenges/challenge-single.png',
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'PROGRAMA DE AUMENTO',
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize: 17.0,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '\$1,200',
                              style: TextStyle(
                                fontFamily: 'Roboto-Regular',
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _payButton(),
        ],
      ),
    );
  }

  _payButton() {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.20),
              blurRadius: 4.0,
              spreadRadius: 0.0),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TOTAL',
                style: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 17.0,
                ),
              ),
              SizedBox(height: .0),
              Text(
                '\$1,700',
                style: TextStyle(
                  fontFamily: 'Roboto-Medium',
                  fontSize: 21.0,
                  color: Color(0xFFE04386),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'PAGAR',
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
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 20.0),
          _title(),
          SizedBox(height: 20.0),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        child: Image.asset(
                          'assets/images/challenges/challenge-single.png',
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Reto Individual'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium',
                          fontSize: 22.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Es un reto de 21 días enfocado principalmente en el cambio de hábitos, perdida de peso y grasa corporal.',
                              style: TextStyle(
                                fontFamily: 'Roboto-Light',
                                fontSize: 16.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Aprenderás a comer de manera saludable y sin excluir ningún grupo de alimentos con la finalidad de mejorar tu calidad de vida e inculcar en ti un estilo de vida más saludable que dure para siempre.',
                              style: TextStyle(
                                fontFamily: 'Roboto-Light',
                                fontSize: 16.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'MAS INFORMACIÓN',
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
                      ),
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              viewportFraction: 0.75,
              scale: 0.9,
            ),
          ),
        ],
      ),
    );
  }

  _title() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        '¿ESTÁS LISTO PARA LLEGAR A LA MEJOR VERSIÓN DE TI?',
        style: TextStyle(
          fontFamily: 'Roboto-Medium',
          fontSize: 21.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

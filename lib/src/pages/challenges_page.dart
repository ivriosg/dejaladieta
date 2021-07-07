import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:flutter_swiper/flutter_swiper.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    // Container(
    //   padding: EdgeInsets.symmetric(
    //     horizontal: 15.0,
    //     vertical: 20.0,
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SizedBox(height: 20.0),
    //       Text(
    //         '¿Estás listo para llegar a la mejor versión de ti?',
    //         style: TextStyle(
    //           fontFamily: 'Roboto-Medium',
    //           fontSize: 21.0,
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //       SizedBox(height: 20.0),
    //       Swiper(
    //         itemBuilder: (BuildContext context, int index) {
    //           return Container(
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //             ),
    //             child: Column(
    //               children: [
    //                 Image.asset(
    //                     'assets/images/challenges/challenge-single.png'),
    //                 SizedBox(height: 10.0),
    //                 Text(
    //                   'Reto Individual',
    //                   style: TextStyle(
    //                     fontFamily: 'Roboto-Medium',
    //                     fontSize: 22.0,
    //                   ),
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
    //                   child: Column(
    //                     children: [
    //                       Text(
    //                         'Es un reto de 21 días enfocado principalmente en el cambio de hábitos, perdida de peso y grasa corporal.',
    //                         style: TextStyle(
    //                           fontFamily: 'Roboto-Light',
    //                           fontSize: 16.0,
    //                         ),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                       SizedBox(height: 10.0),
    //                       Text(
    //                         'Aprenderás a comer de manera saludable y sin excluir ningún grupo de alimentos con la finalidad de mejorar tu calidad de vida e inculcar en ti un estilo de vida más saludable que dure para siempre.',
    //                         style: TextStyle(
    //                           fontFamily: 'Roboto-Light',
    //                           fontSize: 16.0,
    //                         ),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           );
    //         },
    //         scrollDirection: Axis.horizontal,
    //         itemCount: 2,
    //         viewportFraction: 0.8,
    //         scale: 0.9,
    //         pagination: SwiperPagination(),
    //       ),
    //     ],
    //   ),
    // );
  }
}

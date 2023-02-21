import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FirstHealthy extends StatelessWidget {
  static const name = 'First Healhty';
  static const routeName = '/first_healthy';
  const FirstHealthy({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double scaleWidth = width/511;
    double scaleHeight = height/1077;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Column(
        children: [
          const SizedBox(height: 42.0),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
              child: const Center(
                child: TextBodoAmat(
                  22.0,
                  'Hai beauty people, penggunaan rangkaian skincare dengan berbagai macam kandungannya yang bervariasi tentunya bertujuan agar kita memiliki kulit yang sehat, nah seperti apa sih kulit sehat itu?',
                  TextAlign.center,
                  Colors.white,
                ),
              ),
            )
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: 405*scaleWidth,
            height: 525*scaleHeight,
            child: Image.asset(
              'assets/images/section-5/5-1.webp',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
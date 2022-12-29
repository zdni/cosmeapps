import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class FifthRoutin extends StatelessWidget {
  const FifthRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45.0),
            const TextBoleh(
              48.0, 
              'Pelembab kulit (moisturizer)', 
              TextAlign.center, 
              Colors.white,
            ),
            const SizedBox(height: 45.0),
            SizedBox(
              width: 280*scaleWidth,
              child: Image.asset(
                'assets/images/section-3/3-3.png',
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: 45.0),
            const TextBodoAmat(
              24.0, 
              'Moisturizer merupakan salah satu basic skincare yang harus digunakan untuk menjaga kelembabab kulit.', 
              TextAlign.center, 
              Colors.white,
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class EighthIngredient extends StatelessWidget {
  const EighthIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35.0),
            const TextBoleh(
              26.0, 
              'Allantoin', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBoleh(
              26.0, 
              '(aluminium dihydroxy allantoinate)', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      TextBodoAmat(
                        17.0, 
                        'merupakan ekstrak tanaman komprei', 
                        TextAlign.left, 
                        Colors.white
                      ),
                      SizedBox(height: 25.0),
                      TextBodoAmat(
                        14.0, 
                        'Allantoin digunakan dalam pengobatan luka untuk mempercepat pembentukan sel baru dalam proses penyembuhan', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 180*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-20.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'sehingga dapat menghilangkan bekas luka dan bekas jerawat atau mencegah terbentuknya bekas luka dan bekas jerawat baru', 
                TextAlign.left, 
                Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
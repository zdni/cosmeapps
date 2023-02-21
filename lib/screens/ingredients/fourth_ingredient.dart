import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FourthIngredient extends StatelessWidget {
  const FourthIngredient({super.key});

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
              26.0, 
              'Niacinamide', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBoleh(
              26.0, 
              '(Vitamin B3)', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 35.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0,
                    'merupakan antioksidan, sehingga digunakan sebagai antipenuaan (antiaging)',
                    TextAlign.left,
                  Colors.white
                  ),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 180*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-9.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                const SizedBox(width: 35.0),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 35.0),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/section-4/4-10.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ),
                const SizedBox(width: 35.0),
              ],
            ),
            const SizedBox(height: 15.0),
            const TextBodoAmat(
              17.0, 
              'Niacinamide dapat digunakan oleh', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBodoAmat(
              17.0, 
              'semua jenis kulit', 
              TextAlign.center, 
              Color.fromARGB(255, 255, 133, 161)
            ),
            const SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular( 15.0 ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 8, 
                vertical: 4
              ),
              child: Column(
                children: [
                  const TextBodoAmat(
                    14.0, 
                    'konsentrasi niacinamide yang digunakan adalah:', 
                    TextAlign.left, 
                    Color.fromARGB(255, 255, 133, 161)
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      TextBoleh(
                        26.0, 
                        '2%', 
                        TextAlign.center, 
                        Color.fromARGB(255, 255, 133, 161)
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: TextBodoAmat(
                          14, 
                          'untuk memperbaiki skin barrier', 
                          TextAlign.left, 
                          Colors.black
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      TextBoleh(
                        26.0, 
                        '4%', 
                        TextAlign.center, 
                        Color.fromARGB(255, 255, 133, 161)
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: TextBodoAmat(
                          14, 
                          'untuk mengatasi bekas jerawat', 
                          TextAlign.left, 
                          Colors.black
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      TextBoleh(
                        26.0, 
                        '5%', 
                        TextAlign.center, 
                        Color.fromARGB(255, 255, 133, 161)
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: TextBodoAmat(
                          14, 
                          'untuk mengatasi flek dan minyak berlebih', 
                          TextAlign.left, 
                          Colors.black
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
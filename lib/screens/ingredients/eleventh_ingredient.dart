import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class EleventhIngredient extends StatelessWidget {
  const EleventhIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35.0),
            const TextBoleh(
              26.0, 
              'Alpha arbutin', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0,
                  child: Image.asset(
                    'assets/images/section-4/4-25.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const TextBodoAmat(
                        17.0, 
                        'merupakan agen antioksidan dan pencerah kulit alami, umumnya direkomendasikan karena bersifat non iritan, sehingga aman digunakan pada kulit sensitif', 
                        TextAlign.left, 
                        Colors.white
                      ),
                      SizedBox(
                        height: 80,
                        child: Image.asset(
                          'assets/images/section-4/4-26.webp',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'alpha arbutin bekerja dengan menghambat sintesis melanin pada kulit dengan melanosit yang hiperaktif, gangguan hiperpigmentasi, bekas jerawat dan flek hitam yang disebabkan oleh paparan sinar uv, sehingga dapat mencerahkan kulit.', 
                TextAlign.left, 
                Colors.black54
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 120.0,
                  child: Image.asset(
                    'assets/images/section-4/4-7.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0,
                    'penggunaan alpha arbutin pada konsentrasi 3% sudah sangat efektif, untuk konsentrasi 2% relatif aman dan tidak menimbulkan efek samping',
                    TextAlign.left,
                    Colors.white,
                  )
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FifthIngredient extends StatelessWidget {
  const FifthIngredient({super.key});

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
              'AHA', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBoleh(
              26.0, 
              '(Alpha Hydoxy Acid)', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 140*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-11.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                const SizedBox(width: 10.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0,
                    'digunakan sebagai pelembab dan membantu pengelupasan kulit (eksfoliasi) untuk meregenerasi kulit.',
                    TextAlign.left,
                  Colors.white
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0,
                    'AHA bersifat water soluble (larut air) yang bekerja melalui atas stratum korneum kulit.',
                    TextAlign.left,
                  Colors.white
                  ),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 140*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-12.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/section-4/4-13.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 8.0,
                    ),
                    child: const TextBodoAmat(
                      14.0, 
                      'AHA mempunyai efek yang sangat besar terhadap keratinasi/pembentukan stratum korneum baru dan menstimulasi sintesa kolagen yang bisa membuat kulit menjadi lembut dan awet muda.', 
                      TextAlign.left, 
                      Colors.black54
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular( 15.0 ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: const [
                  TextBodoAmat(
                    14.0, 
                    'konsentrasi AHA yang dianjurkan adalah 3-8%', 
                    TextAlign.center, 
                    Colors.red
                  ),
                  SizedBox(height: 5.0),
                  TextBodoAmat(
                    11.0, 
                    'konsentrasi yang lebih tinggi sebaiknya di bawah pengawasan dokter', 
                    TextAlign.center, 
                    Colors.black
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 80,
                  child: Image.asset(
                    'assets/images/section-4/4-14.webp',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const TextBodoAmat(
                        17.0, 
                        'AHA direkomendasikan untuk kulit normal-kering dengan manfaat:', 
                        TextAlign.left, 
                        Colors.white
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Memperbaiki tekstur kulit',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Mencerahkan kulit',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Menyamarkan pori-pori besar',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Mengurangi peradangan',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Mengangkat sel kulit mati',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular( 15.0 ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              14.0,
                              'Mencegah jerawat',
                              TextAlign.left,
                              Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ) 
                )
              ],
            ),
            const SizedBox(height: 8.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              width: double.infinity,
              child: Image.asset(
                'assets/images/section-4/4-29.webp',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
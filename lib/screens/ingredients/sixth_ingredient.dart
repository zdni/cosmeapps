import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SixthIngredient extends StatelessWidget {
  const SixthIngredient({super.key});

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
              'BHA', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBoleh(
              26.0, 
              '(Beta Hydoxy Acid)', 
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
                    'assets/images/section-4/4-16.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
                const SizedBox(width: 10.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0,
                    'BHA bersifat oil soluble (larut minyak) sehingga bisa berpenetrasi ke bagian kulit yang lebih dalam.',
                    TextAlign.left,
                  Colors.white
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 80,
                  child: Image.asset(
                    'assets/images/section-4/4-17.webp',
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
                        'Sehingga BHA direkomendasikan untuk kulit normal cenderung berminyak dengan manfaat:', 
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
                              'Mengangkat minyak berlebih',
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
                              'Membersihkan pori yang tersumbat',
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
              height: 70,
              child: Image.asset(
                'assets/images/section-4/4-30.webp',
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomRight,
              ),
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
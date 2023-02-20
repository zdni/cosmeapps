import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class ThirdIngredient extends StatelessWidget {
  const ThirdIngredient({super.key});

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
              'Retinol', 
              TextAlign.center, 
              Colors.white
            ),
            const TextBoleh(
              26.0, 
              '(Vitamin A)', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0, 
                    'Merupakan antioksidan kuat dan penetral radikal bebas, meningkatkan sintesis kolagen aktivitas keratolitik, pembaruan sel kulit', 
                    TextAlign.left, 
                    Colors.white
                  ),
                ),
                const SizedBox(width: 4.0),
                SizedBox(
                  width: 140*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-3.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 140*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-4.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 5.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0, 
                    'oleh karena itu, dalam kosmetik, retinol digunakan untuk mengurangi kulit yang menua, keriput, bekas jerawat, hiperpigmentasi, dan psoriasis (radang pada kulit)', 
                    TextAlign.left, 
                    Colors.white
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular( 15.0 ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8, 
                      vertical: 4
                    ),
                    child: const TextBodoAmat(
                      14.0, 
                      'Namun, penggunaan retinol harus diiringi dengan pelembab, agar tidak menimbulkan masalah, terutama untuk tipe kulit kering', 
                      TextAlign.center, 
                      Colors.black
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 80*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-5.webp',
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/section-4/4-8.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                  child: TextBodoAmat(
                    15.0, 
                    'sehingga penggunaan retinol ini disarankan digunakan oleh kulit normal dan berminyak', 
                    TextAlign.center, 
                    Colors.black
                  ),
                ),
              ]
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 120*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-4/4-7.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 5.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0, 
                    'Namun, untuk kulit yang sedang berjerawat parah sebaiknya tidak menggunakan retinol sebelum jerawat rendah, retinol digunakan untuk menghilangkan bekas jerawat.', 
                    TextAlign.center, 
                    Colors.black
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
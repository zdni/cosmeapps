import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SeventhIngredient extends StatelessWidget {
  const SeventhIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 65.0),
            const TextBoleh(
              26.0, 
              'Vitamin C', 
              TextAlign.center, 
              Colors.white
            ),
            Row(
              children: [
                const SizedBox(width: 15),
                SizedBox(
                  width: 80.0,
                  child: Image.asset(
                    'assets/images/section-4/4-18.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0, 
                    'merupakan antioksidan, yang digunakan sebagai antipenuaan (antiaging) dan menyamarkan bekas jerawat', 
                    TextAlign.left, 
                    Colors.white
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
            SizedBox(
              height: 80.0,
              child: Image.asset(
                'assets/images/section-4/4-19.webp',
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'vitamin C disarankan untuk kulit normal sampai kering yang penggunaannya tentu diiringi dengan pelembab untuk menghindari iritasi', 
                TextAlign.left, 
                Colors.black54
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 15),
                SizedBox(
                  width: 100.0,
                  child: Image.asset(
                    'assets/images/section-4/4-7.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0, 
                    'penggunaan vitamin c tidak cocok untuk kamu yang sedang mengalami beruntusan dan jerawat yang meradang karena di dalam vitamin c dapat membuat proses peradangan di jerawat tak kunjung usai.', 
                    TextAlign.left, 
                    Colors.black54
                  ),
                ),
                const SizedBox(width: 15),
              ],
            )
          ],
        ),
      ),
    );
  }
}
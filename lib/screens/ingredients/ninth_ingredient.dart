import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class NinthIngredient extends StatelessWidget {
  const NinthIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45.0),
            const TextBoleh(
              26.0, 
              'Hyaluronic acid', 
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
                    'assets/images/section-4/4-21.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      TextBodoAmat(
                        17.0,
                        'adalah molekul alami yang terdapat di dalam kulit untuk menjaga kelembaban.',
                        TextAlign.left,
                        Colors.white,
                      ),
                      TextBodoAmat(
                        17.0,
                        'Namun saat ini telah terdapat asam hialuronat buatan yang merupakan hasil isolasi.',
                        TextAlign.left,
                        Colors.white,
                      ),
                    ],
                  )
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'hyaluronic acid ini sangat berperan penting untuk menahan air', 
                TextAlign.left, 
                Colors.black54
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0, 
                    'hyaluronic acid dalam sediaan kosmetik ditujukan untuk melembabkan dan mengembalikan elastilitas kulit sehingga menghasilkan efek antikerut dan peremejaan pada kulit', 
                    TextAlign.center, 
                    Colors.white
                  ),
                ),
                const SizedBox(width: 8.0),
                SizedBox(
                  width: 140,
                  child: Image.asset(
                    'assets/images/section-4/4-22.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              width: double.infinity,
              child: Image.asset(
                'assets/images/section-6/6-7.webp',
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class TenthIngredient extends StatelessWidget {
  const TenthIngredient({super.key});

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
              'Ceramide', 
              TextAlign.center, 
              Colors.white
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 80.0,
                  child: Image.asset(
                    'assets/images/section-4/4-23.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 8.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0, 
                    'Ceramide adalah lemak yang dihasilkan secara alami oleh kulit. susunan dan isinya sangat diperlukan untuk mempertahankan fungsi penghalang kulit', 
                    TextAlign.justify, 
                    Colors.white
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
                'Namun, ceramide pada kulit dapat mengalami penipisan akibat perawatan berbahan keras (retinol, hidrokuinon, polusi, paparan sinar uv, yang dapat memunculkan garis halus dan kerutan', 
                TextAlign.justify, 
                Colors.white
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              width: double.infinity,
              child: Image.asset(
                'assets/images/section-4/4-24.webp',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'apabila kondisi ini terus dibiarkan tanpa ada perawatan, skin barrier kulit perlahan akan rusak sehingga tidak mampu lagi melindungi kulit dari ancaman-ancaman masalah kulit yang akan datang.', 
                TextAlign.justify, 
                Colors.white
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: const TextBodoAmat(
                14.0, 
                'sehingga digunakan ceramide untuk meminimalisir berkurangnya kadar ceramides dalam kulit, agar kadarnya cukup sehingga kulit tetap terhidrasi dan lembut', 
                TextAlign.justify, 
                Colors.black54
              ),
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
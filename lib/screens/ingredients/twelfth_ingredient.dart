import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

import 'package:cosmeapps/screens/home_screen.dart';

class TwelfthIngredient extends StatelessWidget {
  const TwelfthIngredient({super.key});

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
              'Centella asiatica', 
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
                    'ekstrak centella asiatica digunakan sebagai senyawa aktif dalam sediaan perawatan kulit karena sifatnya sebagai antioksidan, antiinflamasi dan antiaging', 
                    TextAlign.left, 
                    Colors.white
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Image.asset(
                    'assets/images/section-4/4-27.webp',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(width: 35.0),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 80,
                  child: Image.asset(
                    'assets/images/section-4/4-28.webp',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(width: 8.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    14.0, 
                    'ekstrak centella asiatica digunakan sebagai senyawa aktif dalam sediaan perawatan kulit karena sifatnya sebagai antioksidan, antiinflamasi dan antiaging', 
                    TextAlign.left, 
                    Colors.black54
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 15),
            InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0
                  ),
                  borderRadius: const BorderRadius.all( Radius.circular(15.0) )
                ),
                padding: const EdgeInsets.all(10.0),
                child: const TextBodoAmat(
                  14.0,
                  'Beranda',
                  TextAlign.center,
                  Colors.white
                ),
              ),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SecondOpening extends StatelessWidget {
  static const name = 'Second Opening';
  static const routeName = '/second_opening';
  const SecondOpening({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width/511;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 25.0),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 28.0,
                          child: Image.asset(
                            'assets/images/stiker-1-left.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 60.0),
                      ],
                    ),
                    const TextBoleh(
                      40.0, 
                      'Definisi Kosmetik', 
                      TextAlign.center,
                      Colors.white,
                    ),
                    const SizedBox(width: 28.0),
                  ],
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 298*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-1/1-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextBodoAmat(
                  36.0, 
                  'Kosmetik', 
                  TextAlign.center,
                  Colors.white
                ),
                const SizedBox(height: 15.0),
                const TextBodoAmat(
                  21.0, 
                  'Bahan atau sediaan yang dimaksudkan untuk digunakan pada bagian luar tubuh manusia seperti epidermis, rambut, kuku, bibir, dan organ genital bagian luar atau gigi dan membran mukosa mulut terutama untuk membersihkan, mewangikan, mengubah penampilan, dan atau memperbaiki bau badan atau melindungi atau memelihara tubuh pada kondisi baik.', 
                  TextAlign.justify,
                  Colors.white
                ),
                const SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      )
    );
  }
}
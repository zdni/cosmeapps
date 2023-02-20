import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FirstSkin extends StatelessWidget {
  static const name = 'First Skin';
  static const routeName = '/first_skin';
  const FirstSkin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double scaleWidth = width/511;
    double scaleHeight = height/1077;
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      22.0,
                      'Nah sekarang kita sudah tahu apa yang dimaksud dengan kosmetik dan kosmetik medik.',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      22.0,
                      'Sebelum menggunakan kosmetik, untuk mendapatkan hasil maksimal, kosmetik yang digunakan harus sesuai dengan jenis kulit ya,,',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      22.0,
                      'Yuk kenali jenis kulit kalian....',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
          SizedBox(
            width: 405*scaleWidth,
            height: 525*scaleHeight,
            child: Image.asset(
              'assets/images/section-2/2-1.webp',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
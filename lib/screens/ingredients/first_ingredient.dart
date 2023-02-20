import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FirstIngredient extends StatelessWidget {
  const FirstIngredient({super.key});

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
                      26.0,
                      'Setelah mengetahui basic kosmetik yang digunakan, selanjutnya yuk kiya bahas kosmetik medik atau kosmetik yang digunakan untuk mengobati atau memperbaiki kulit.',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            )
          ),
          SizedBox(
            width: 405*scaleWidth,
            height: 525*scaleHeight,
            child: Image.asset(
              'assets/images/section-4/4-1.webp',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
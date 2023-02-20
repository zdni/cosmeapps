import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class SecondIngredient extends StatelessWidget {
  const SecondIngredient({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Column(
        children: [
          const SizedBox(height: 65.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
            child: const Center(
              child: TextBodoAmat(
                26.0,
                'Sebelum memilih kosmetik untuk digunakan, teman-teman perlu mengetahui kandungan kosmetik tersebut.',
                TextAlign.center,
              Colors.white
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          Row(
            children: [
              const SizedBox(width: 15.0),
              const Expanded(
                flex: 1,
                child: TextBodoAmat(
                      26.0,
                      'apakah kandungan tersebut sesuai dan diperlukan oleh kulit atau tidak?',
                      TextAlign.center,
                    Colors.white
                    ),
              ),
              SizedBox(
                width: 180*scaleWidth,
                child: Image.asset(
                  'assets/images/section-4/4-2.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(width: 45.0),
            ],
          ),
        ],
      ),
    );
  }
}
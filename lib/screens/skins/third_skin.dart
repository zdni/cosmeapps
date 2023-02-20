import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class ThirdSkin extends StatelessWidget {
  static const name = 'Third Skin';
  static const routeName = '/third_skin';
  const ThirdSkin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 28.0,
                        child: Image.asset(
                          'assets/images/stiker-1-left.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                  const TextBoleh(
                    26.0, 
                    'Kulit Normal', 
                    TextAlign.center,
                    Colors.white,
                  ),
                  const SizedBox(width: 28.0),
                ],
              ),
              const TextBodoAmat(
                14.0, 
                'Kulit normal (normal skin) adalah kulit dengan kadar air yang tinggi, dan kadar minyak rendah sampai normal, yang ditandai dengan ciri-ciri:', 
                TextAlign.center,
                Colors.white
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-2/skin-2.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
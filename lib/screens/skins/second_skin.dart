import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SecondSkin extends StatelessWidget {
  static const name = 'Second Skin';
  static const routeName = '/second_skin';
  const SecondSkin({super.key});

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
                  const SizedBox(width: 28.0),
                  const TextBoleh(
                    26.0, 
                    'Kulit Kering', 
                    TextAlign.center,
                    Colors.white,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 28.0,
                        child: Image.asset(
                          'assets/images/stiker-1-right.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ],
              ),
              const TextBodoAmat(
                14.0, 
                'Kulit kering (dry skin) adalah kulit dengan kadar air kurang, yang ditandai dengan ciri-ciri:', 
                TextAlign.center,
                Colors.white
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-2/skin-1.webp',
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
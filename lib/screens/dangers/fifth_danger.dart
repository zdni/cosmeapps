import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class FifthDanger extends StatelessWidget {
  const FifthDanger({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double scaleWidth = width/511;
    double scaleHeight = height/1077;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 25.0),
              const TextBoleh(
                26.0, 
                'Tretinoin', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 35.0),
              Row(
                children: [
                  SizedBox(
                    width: 160*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-10.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      14.0, 
                      'Adalah senyawa sintetis vitamin A yang berfungsi untuk mengatasi masalah kulit, seperti jerawat hingga tanda kerutan', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular( 15.0 ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 5.0,
                      ),
                      child: const TextBodoAmat(
                        14.0, 
                        'Namun bahan ini adalah obat keras yang hanya dapat diresepkan oleh dokter', 
                        TextAlign.center, 
                        Color.fromARGB(255, 153, 204, 204),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  SizedBox(
                    width: 120*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-11.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  SizedBox(
                    width: 160*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-12.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      14.0, 
                      'Tretinoin banyak disalahgunakan pada sediaan peeling, sediaan untuk kulit berjerawat dan pencerah kulit dengan mekanisme pengelupasan kulit.', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: 160*scaleHeight,
                child: Image.asset(
                  'assets/images/section-6/6-13.webp',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular( 15.0 ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8.0,
                ),
                child: const TextBodoAmat(
                  14.0, 
                  'zat ini menyebabkan kulit gatal, bengkak, rasa terbakar, kemerahan, dan mengelupas, bertambahnya luka, dan kulit menjadi lebih gelap atau lebih terang pada area yang diolesi', 
                  TextAlign.center, 
                  Color.fromARGB(255, 153, 204, 204),
                ),
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
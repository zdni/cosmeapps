import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class FourthDanger extends StatelessWidget {
  const FourthDanger({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 45.0),
              const TextBoleh(
                26.0, 
                'Hidrokuinon', 
                TextAlign.center, 
                Colors.white
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 160*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-6.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      14.0, 
                      'Hidrokuinon memiliki kemampuan untuk menghambat pembentukan melanin sehingga digunakan untuk pencerah kulit', 
                      TextAlign.center, 
                      Colors.white
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-6/6-7.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      14.0, 
                      'Namun, penggunaan dalam jangka panjang dan dengan dosis yang tinggi dilarang. Karena dapat menyebabkan Hiperpigmentasi', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  SizedBox(
                    width: 160*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-8.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25.0),
              Row(
                children: [
                  SizedBox(
                    width: 160*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-9.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      14.0, 
                      'Hal ini akan terlihat selama 6 bulan, dan kemungkinan bersifat irreversible (tidak dapat kembali)', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular( 15.0 ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 15.0,
                ),
                child: const TextBodoAmat(
                  14.0, 
                  'krim yang mengandung Hidrokuinon akan terakumulasi dalam kulit dan menyebabkan mutasi dan kerusakan DNA, sehingga bersifat karsinogenik (pemicu kanker)', 
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
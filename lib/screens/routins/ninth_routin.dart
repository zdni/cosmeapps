import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

class NinthRoutin extends StatelessWidget {
  const NinthRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              SizedBox(
                width: 405*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-14.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                17.0, 
                'paparan sinar matahari yang berlebihan atau dalam jangka waktu yang lama dapat menimbulkan efek negatif pada kulit, seperti:', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 511*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-15.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 511*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-16.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 60.0),
            ],
          ),
        ),
      ),
    );
  }
}
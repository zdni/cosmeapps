import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

class NinthRoutin extends StatelessWidget {
  const NinthRoutin({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 15.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              SizedBox(
                width: 405*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-14.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'paparan sinar matahari yang berlebihan atau dalam jangka waktu yang lama dapat menimbulkan efek negatif pada kulit, seperti:', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 511*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-15.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 511*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-16.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
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
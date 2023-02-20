import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class ThirdDanger extends StatelessWidget {
  const ThirdDanger({super.key});

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
                'Merkuri', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 35.0),
              SizedBox(
                width: 280*scaleWidth,
                child: Image.asset(
                  'assets/images/section-6/6-4.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                17.0, 
                'BERBAHAYA!!', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                14.0, 
                'dalam konsentrasi sekecil apapun dapat bersifat racun. Pemakaiannya dapat menimbulkan bahaya pada tubuh:', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-6/6-5.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
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

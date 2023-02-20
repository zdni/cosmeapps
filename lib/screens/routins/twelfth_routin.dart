import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class TwelfthRoutin extends StatelessWidget {
  const TwelfthRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const TextBoleh(
                26.0, 
                'Eksfoliasi (Eksfoliator)', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 280*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-5.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                17.0, 
                'Eksfoliasi adalah prosedur untuk menghilangkan sel kulit mati dari lapisan atas kulit. untuk menjaga kulit tetap sehat dan menarik seiring bertambahnya usia, kamu perlu merawatnya lebih lanjut, dengan menghilangkan sel kulit baru yang diproduksi di permukaan dan mendorong perkembangan sel di lapisan subepidermal serta membantu membuka pori-pori kulit yang tersumbat. untuk eksfoliasi pada kulit digunakan eksfoliator.', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
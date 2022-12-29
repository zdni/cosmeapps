import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class SeventRoutin extends StatelessWidget {
  const SeventRoutin({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 25.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const TextBoleh(
                38.0, 
                'Moisturizer berdasarkan jenis kulit', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 405*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-12.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                20.0, 
                'Untuk kamu yang memiliki kulit normal sampai kering, pelembab yang cocok bersifat ringan dan tidak mengandung alkohol atau parfum. Pelembab juga harus tebal dan berminyak untuk mengunci kelembaban yang dibutuhkan untuk perawatan kulit kering yang baik.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                20.0, 
                'Gunakan pelembab dalam bentuk krim atau lotion karena memiliki waktu kontak yang lama sehingga dapat mengunci kelembaban kulit.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 45.0),
              SizedBox(
                width: 220*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-13.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                20.0, 
                'Untuk kamu yang memiliki kulit normal sampai kering, pelembab yang cocok bersifat ringan dan tidak mengandung alkohol atau parfum. Pelembab juga harus tebal dan berminyak untuk mengunci kelembaban yang dibutuhkan untuk perawatan kulit kering yang baik.', 
                TextAlign.left, 
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
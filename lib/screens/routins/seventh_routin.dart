import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class SeventRoutin extends StatelessWidget {
  const SeventRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 45.0),
              const TextBoleh(
                26.0, 
                'Moisturizer berdasarkan jenis kulit', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 340*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-12.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 10.0),
              const TextBodoAmat(
                14.0, 
                'Untuk kamu yang memiliki kulit normal sampai kering, pelembab yang cocok bersifat ringan dan tidak mengandung alkohol atau parfum. Pelembab juga harus tebal dan berminyak untuk mengunci kelembaban yang dibutuhkan untuk perawatan kulit kering yang baik.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 8.0),
              const TextBodoAmat(
                14.0, 
                'Gunakan pelembab dalam bentuk krim atau lotion karena memiliki waktu kontak yang lama sehingga dapat mengunci kelembaban kulit.', 
                TextAlign.left, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: 200*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-13.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 10.0),
              const TextBodoAmat(
                14.0, 
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
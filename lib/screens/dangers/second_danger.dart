import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

class SecondDanger extends StatelessWidget {
  const SecondDanger({super.key});

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
              const TextBodoAmat(
                17.0, 
                'Hai beauty peoples, agar dapat terhindar dari efek buruk dari kosmetik berbahaya, yuk kita belajar bahan apa saja yang dilarang digunakan dalam kosmetik', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 280*scaleWidth,
                child: Image.asset(
                  'assets/images/section-6/6-3.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                17.0, 
                'Berikut adalah bahan-bahan dilarang yang tidak boleh digunakan dalam kosmetik sebagaimana tercantum dalam "Peraturan Kepala Badan POM No. 23 Tahun 2019 tentang persyaratan Teknis Bahan Kosmetika"', 
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
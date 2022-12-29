import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class ThirdRoutin extends StatelessWidget {
  const ThirdRoutin({super.key});

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
              const SizedBox(height: 35.0),
              const TextBoleh(
                48.0, 
                'Pembersih Kulit (Cleanser)', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 280*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-2.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                24.0, 
                'jenis kosmetik yang digunakan untuk membersihkan kulit adalah sabun cuci muka (face wash).', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                24.0, 
                'Face wash adalah larutan pembersih wajah yang mengangkat sel kulit mati, meinyak, kotoran, dan pollusi lainnya dari wajah.', 
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
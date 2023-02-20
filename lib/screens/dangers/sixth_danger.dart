import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/home_screen.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SixthDanger extends StatelessWidget {
  const SixthDanger({super.key});

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
              const SizedBox(height: 25.0),
              const TextBoleh(
                26.0, 
                'Resornil', 
                TextAlign.center, 
                Colors.white
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-6/6-14.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const TextBodoAmat(
                14.0, 
                'adalah golongan obat keras yang dilarang penggunaannya pada perawatan kulit. Penggunaan resorsinal dosis tinggi dapat menyebabkan kulit kemerahan dan iritasi', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
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
                        vertical: 4.0,
                      ),
                      child: const TextBodoAmat(
                        14.0, 
                        'penggunaannya hanya boleh sebagai bahan pengoksidasi warna pada pewarna rambut shampo dan losio untuk rambut.', 
                        TextAlign.center, 
                        Color.fromARGB(255, 153, 204, 204),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  SizedBox(
                    width: 90*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-6/6-15.webp',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35.0),
              const TextBoleh(
                26.0, 
                'Timbal (Pb)', 
                TextAlign.center, 
                Colors.white
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-6/6-16.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              const TextBodoAmat(
                14.0, 
                'Pada orang dewasa timbal dapat menyebabkan gangguan sistem syaraf pusat, kardiovaskular (meningkatkan tekanan darah) dan menurunkan fungsi ginjal.', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 35),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),
                onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0
                    ),
                    borderRadius: const BorderRadius.all( Radius.circular(15.0) )
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const TextBodoAmat(
                    14.0,
                    'Beranda',
                    TextAlign.center,
                    Colors.white
                  ),
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
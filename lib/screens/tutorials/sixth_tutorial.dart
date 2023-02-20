import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:cosmeapps/widgets/text_bodo_amat.dart';

import 'package:cosmeapps/screens/home_screen.dart';

class SixthTutorial extends StatelessWidget {
  const SixthTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35.0),
            const TextBoleh(
              30.0, 
              'CEK', 
              TextAlign.center, 
              Colors.white
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TextBoleh(
                  30.0, 
                  'K', 
                  TextAlign.center, 
                  Colors.red
                ),
                TextBoleh(
                  30.0, 
                  'adaluwarsa', 
                  TextAlign.center, 
                  Colors.white
                ),
              ],
            ),
            const SizedBox(height: 35.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 140*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-7/7-8.webp',
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      TextBodoAmat(
                        22.0, 
                        'Telitilah tanggal kadaluwarsa kosmetik sebelum membeli', 
                        TextAlign.left, 
                        Colors.white
                      ),
                      SizedBox(height: 15.0),
                      TextBodoAmat(
                        22.0, 
                        'Tanggal kadaluwarsa ditulis dengan urutan tanggal, bulan dan tahun, atau bulan dan tahun', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 40.0),
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
    );
  }
}
import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_boleh.dart';

class FifthTutorial extends StatelessWidget {
  const FifthTutorial({super.key});

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
                  'I', 
                  TextAlign.center, 
                  Colors.red
                ),
                TextBoleh(
                  30.0, 
                  'zin edar', 
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
                  width: 130*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-7/7-6.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      TextBodoAmat(
                        17.0, 
                        'Kosmetik wajib memiliki izin edar berupa notifikasi dari Badan POM.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                      TextBodoAmat(
                        17.0, 
                        'Nomor notifikasi ditandai dengan kode N diikuti 1 huruf dan 11 digit angka.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 35.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                const Expanded(
                  flex: 1,
                  child: TextBodoAmat(
                    17.0, 
                    'Cek izin edar produk kosmetik dengan menggunakan aplikasi cek BPOM atau website cek.bpom.pom.go.id', 
                    TextAlign.left, 
                    Colors.white
                  ),
                ),
                SizedBox(
                  width: 210*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-7/7-7.webp',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                const SizedBox(width: 15.0),
              ],
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
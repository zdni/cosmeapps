import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class FourthOpening extends StatelessWidget {
  static const name = 'Fourth Opening';
  static const routeName = '/fourth_opening';
  const FourthOpening({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width/511;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 28.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        SizedBox(height: 40.0),
                        TextBoleh(
                          26.0, 
                          'Penggolongan Kosmetik', 
                          TextAlign.center, 
                          Colors.white
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 28.0,
                    child: Image.asset(
                      'assets/images/stiker-1-right.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const TextBodoAmat(
                17.0, 
                '2) Berdasarkan sifat dan cara pembuatan', 
                TextAlign.center, 
                Colors.white
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 40.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        width: 210*scaleWidth,
                        child: Image.asset(
                          'assets/images/section-1/1-18.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            TextBodoAmat(
                              17.0, 
                              '"Kosmetik Modern"', 
                              TextAlign.center, 
                              Colors.white
                            ),
                            SizedBox(height: 8),
                            TextBodoAmat(
                              14.0, 
                              'Kosmetik yang diramu dari bahan kimia dan diolah secara modern', 
                              TextAlign.left, 
                              Colors.black
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextBodoAmat(
                              17.0, 
                              '"Kosmetik Tradisional"', 
                              TextAlign.center, 
                              Colors.white
                            ),
                            const SizedBox(height: 8),
                            const TextBodoAmat(
                              14.0, 
                              'Terbagi menjadi 3', 
                              TextAlign.left, 
                              Colors.black
                            ),
                            const SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8.0),
                                  alignment: Alignment.centerLeft,
                                  height: 20*scaleWidth,
                                  width: 20*scaleWidth,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      TextBodoAmat(
                                        14.0, 
                                        '"Betul-betul tradisional"', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                      TextBodoAmat(
                                        12.0, 
                                        'Misalnya lulur yang dibuat dari bahan alam diolah menurut resep dan cara yang turun temurun.', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8.0),
                                  alignment: Alignment.centerLeft,
                                  height: 20*scaleWidth,
                                  width: 20*scaleWidth,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      TextBodoAmat(
                                        14.0, 
                                        '"Semi tradisional"', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                      TextBodoAmat(
                                        12.0, 
                                        'Diolah secara modern dan diberi bahan pengawet agar tahan lama.', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8.0),
                                  alignment: Alignment.centerLeft,
                                  height: 20*scaleWidth,
                                  width: 20*scaleWidth,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      TextBodoAmat(
                                        14.0, 
                                        '"Hanya namanya yang tradisional"', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                      TextBodoAmat(
                                        12.0, 
                                        'Tanpa komponen yang benar-benar tradisional dan diberi zat warna yang menyerupai bahan tradisional', 
                                        TextAlign.left, 
                                        Colors.black
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15.0),
                        width: 196*scaleWidth,
                        child: Image.asset(
                          'assets/images/section-1/1-19.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
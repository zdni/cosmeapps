import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/home_screen.dart';

import '../../widgets/text_bodo_amat.dart';
import '../../widgets/text_boleh.dart';

class SixthOpening extends StatefulWidget {
  static const name = 'Sixth Opening';
  static const routeName = '/sixth_opening';
  const SixthOpening({super.key});

  @override
  State<SixthOpening> createState() => _SixthOpeningState();
}

class _SixthOpeningState extends State<SixthOpening> {
  final _pageController = PageController();
  double currentPage = 0;

  var cosmetics = [
    {
      'image': 'assets/images/section-1/1-25.webp',
      'text': 'kosmetik medik untuk mengatasi penuaan dini (antiaging)',
    },
    {
      'image': 'assets/images/section-1/1-26.webp',
      'text': 'kosmetik medik untuk mengatasi kelainan kulit seperti jerawat dan noda hitam (antiaging)',
    },
    {
      'image': 'assets/images/section-1/1-27.webp',
      'text': 'kosmetik medik untuk mengatasi kelainan kulit kepala, misalnya ketombe (antidandruff)',
    },
  ];

  //indicator handler
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toDouble();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width/1077;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 28.0,
                        child: Image.asset(
                          'assets/images/stiker-1-left.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                  const TextBoleh(
                    26.0, 
                    'Penggolongan Kosmetik', 
                    TextAlign.center, 
                    Colors.white
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 28.0,
                        child: Image.asset(
                          'assets/images/stiker-1-right.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ],
              ),
              const TextBodoAmat(
                14.0, 
                'Sejak tahun 1995, Prof. Dr. Lubowe mengemukanan perlunya kosmetik dengan bahan bahan yang secara farmakologis aktif atau bahan obat untuk menyembuhkan kelainan pada kulit dan adneksonanya, atau minimal mempertahankan kondisi kulit yang sudah baik. Kosmetik seperti itu disebut cosmedics singkatan dari Medicated Cosmetics (Kosmetik Medik)', 
                TextAlign.justify, 
                Colors.white
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                width: 360*scaleWidth,
                child: Image.asset(
                  'assets/images/section-1/cosmetics-16.webp',
                  fit: BoxFit.cover,
                ),
              ),
              const TextBodoAmat(
                14.0, 
                'Secara garis besar, Kosmetik medik yang dapat mengatasi kelainan kulit adalah:', 
                TextAlign.justify, 
                Colors.white
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                      child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          cosmetics.length, 
                          (index) => Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 120.0,
                                  child: Image.asset(
                                    cosmetics[index]['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextBodoAmat(
                                  14.0, 
                                  cosmetics[index]['text']!, 
                                  TextAlign.center, 
                                  Colors.white
                                ),
                              ],
                            ),
                          ) 
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        cosmetics.length, 
                        (index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 5),
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPage == index ? Colors.white : Colors.white30,
                            ),
                          );
                        }),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
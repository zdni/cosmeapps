import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_boleh.dart';

class ThirdOpening extends StatefulWidget {
  static const name = 'Third Opening';
  static const routeName = '/third_opening';
  const ThirdOpening({super.key});

  @override
  State<ThirdOpening> createState() => _ThirdOpeningState();
}

class _ThirdOpeningState extends State<ThirdOpening> {
  final _pageController = PageController(viewportFraction: 0.877);
  double currentPage = 0;

  var cosmetics = [
    {
      'image': 'assets/images/section-1/cosmetics-1.png',
      'title': 'Preparat untuk bayi',
      'ex': 'cth: bedak bayi, minyak bayi'
    },
    {
      'image': 'assets/images/section-1/cosmetics-2.png',
      'title': 'Preparat untuk mandi',
      'ex': 'cth: bedak bay, minyak bayi'
    },
    {
      'image': 'assets/images/section-1/cosmetics-3.png',
      'title': 'Preparat untuk mata',
      'ex': 'cth: Mascara, eye shadow'
    },
    {
      'image': 'assets/images/section-1/cosmetics-4.png',
      'title': 'Preparat untuk wangi-wangian',
      'ex': 'cth: Parfum'
    },
    {
      'image': 'assets/images/section-1/cosmetics-5.png',
      'title': 'Preparat untuk rambut',
      'ex': 'cth: Hair spray'
    },
    {
      'image': 'assets/images/section-1/cosmetics-6.png',
      'title': 'Preparat pewarna rambut',
      'ex': 'cth: cat rambut'
    },
    {
      'image': 'assets/images/section-1/cosmetics-7.png',
      'title': 'Preparat untuk make-up',
      'ex': 'cth: bedak, lipstik'
    },
    {
      'image': 'assets/images/section-1/cosmetics-8.png',
      'title': 'Preparat untuk kebersihan mulut',
      'ex': 'cth: mouth wash, pasta gigi'
    },
    {
      'image': 'assets/images/section-1/cosmetics-9.png',
      'title': 'Preparat untuk kebersihan badan',
      'ex': 'cth: deodorant'
    },
    {
      'image': 'assets/images/section-1/cosmetics-10.png',
      'title': 'Preparat kuku',
      'ex': 'cth: cat kuku'
    },
    {
      'image': 'assets/images/section-1/cosmetics-11.png',
      'title': 'Preparat perawatan kulit',
      'ex': 'cth: lotion, lulur'
    },
    {
      'image': 'assets/images/section-1/cosmetics-12.png',
      'title': 'Preparat cukur',
      'ex': 'cth: sabun cukur'
    },
    {
      'image': 'assets/images/section-1/cosmetics-13.png',
      'title': 'Preparat untuk suncreen',
      'ex': 'cth: sunscreen foundation'
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 30.0),
                  const TextBoleh(
                    30.0, 
                    'Penggolongan kosmetik', 
                    TextAlign.center,
                    Colors.white,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 30.0,
                        child: Image.asset(
                          'assets/images/stiker-1-right.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
                ],
              ),
              const TextBodoAmat(
                18.0, 
                '1) Berdasarkan Peraturan Menteri Kesehatan RI:', 
                TextAlign.center,
                Colors.white
              ),
              const SizedBox(height: 60.0),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 260.0,
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
                                const SizedBox(height: 25),
                                TextBodoAmat(
                                  28.0, 
                                  cosmetics[index]['title']!,
                                  TextAlign.center,
                                Colors.white
                                ),
                                const SizedBox(height: 8.0),
                                TextBodoAmat(
                                  18.0, 
                                    cosmetics[index]['ex']!,
                                  TextAlign.center,
                                Colors.black
                                ),
                              ],
                            ),
                          ),
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
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
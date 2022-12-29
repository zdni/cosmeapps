import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class ThirteenthRoutin extends StatefulWidget {
  const ThirteenthRoutin({super.key});

  @override
  State<ThirteenthRoutin> createState() => _ThirteenthRoutinState();
}

class _ThirteenthRoutinState extends State<ThirteenthRoutin> {
  final _pageController = PageController();
  double currentPage = 0;

  var images = [
    {
      'image': 'assets/images/section-3/3-23.png',
      'text': 'Kain Mikrofiber',
    },
    {
      'image': 'assets/images/section-3/3-24.png',
      'text': 'Krital Gula',
    },
    {
      'image': 'assets/images/section-3/3-25.png',
      'text': 'Batu Apung',
    },
    {
      'image': 'assets/images/section-3/3-26.png',
      'text': 'Spons/Sikat Abrasif',
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

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 35.0),
              const TextBoleh(
                48.0, 
                'Jenis-jenis eksfoliasi', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                28.0, 
                '"Eksfoliasi mekanis"', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'Semua jenis pengelupasan/eksfoliasi kulit yang menggunakan tangan, jari atau aplikator dikenal dengan eksfoliasi kulit manual/ eksfoliasi mekanis. Eksfoliasi ini sangat baik untuk orang dengan kulit normal.', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                24.0, 
                'Contoh Eksfoliator mekanis:', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 250.0,
                      child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          images.length, 
                          (index) => Container(
                            margin: const EdgeInsets.only(right: 15.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 120.0,
                                  child: Image.asset(
                                    images[index]['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextBodoAmat(
                                  20.0, 
                                  images[index]['text']!, 
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
                        images.length, 
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
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
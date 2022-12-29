import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:flutter/material.dart';

class SecondRoutin extends StatefulWidget {
  const SecondRoutin({super.key});

  @override
  State<SecondRoutin> createState() => _SecondRoutinState();
}

class _SecondRoutinState extends State<SecondRoutin> {
  final _pageController = PageController(viewportFraction: 0.877);
  double currentPage = 0;

  var images = [
    {
      'image': 'assets/images/section-3/3-2.png',
      'text': 'Pembersih kulit (Cleanser)',
    },
    {
      'image': 'assets/images/section-3/3-3.png',
      'text': 'Pelembab kulit (Mouisturizer)',
    },
    {
      'image': 'assets/images/section-3/3-4.png',
      'text': 'Pelindung kulit (Sunscreen)',
    },
    {
      'image': 'assets/images/section-3/3-5.png',
      'text': 'Eksfoliasi kulit (Eksfoliator)',
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
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 55),
              const TextBodoAmat(
                24.0, 
                'Skincare routine adalah proses merawat kulit yang merupakan tugas penting untuk memastikan kulit dalam kondisi baik dan sehat', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 45.0),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 180.0,
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
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'Skincare routine berbeda untuk tiap kulit, yuk kita bahas...', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
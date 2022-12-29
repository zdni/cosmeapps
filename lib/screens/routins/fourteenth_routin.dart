import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

import 'package:cosmeapps/screens/home_screen.dart';

class FourteenthRoutin extends StatelessWidget {
  const FourteenthRoutin({super.key});

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
                'Jenis-jenis eksfoliasi', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                28.0, 
                '"Eksfoliasi Kimia"', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'eksfoliator ini dapat berbentuk krim, lotion, dan gel. Eksfoliator ini direkomendasikan untuk penderita jerawat, namun juga cocok untuk kulit kering karena dapat membantu pelembab menembus lebih baik kedalam kulit.', 
                TextAlign.center, 
                Colors.white
              ),
              SizedBox(
                width: 511*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-27.png'
                ),
              ),
              const SizedBox(height: 35.0),
              const TextBodoAmat(
                28.0, 
                '"Eksfoliasi Ensim"', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              const TextBodoAmat(
                24.0, 
                'Eksfoliator ini cocok untuk kulit sensitif yang tidak dapat menggunakan eksfoliator asam. umumnya berasal dari tumbuhan.', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                24.0, 
                'Contoh eksfoliator enzim: Enzim papain dari pepaya, bromelain dari nanas, dan enzim dari labu yang dapat dilihat pada komposisi dalam kemasan.', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 80*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-3/3-28.png',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    flex: 1,
                    child: TextBodoAmat(
                      18.0, 
                      'Untuk kulit berminyak, eksfoliasi bisa dilakukan sesering yang dibutuhkan, sekitar 3-5 kali seminggu. Namun untuk jenis kulit laninnya sebaiknya dibatas 1-2 kali seminggu', 
                      TextAlign.left, 
                      Colors.white
                    ),
                  ),
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
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
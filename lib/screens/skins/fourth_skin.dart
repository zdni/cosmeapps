import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/home_screen.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class FourthSkin extends StatelessWidget {
  static const name = 'Fourth Skin';
  static const routeName = '/fourth_skin';
  const FourthSkin({super.key});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
                    width: 28.0,
                    child: Image.asset(
                      'assets/images/stiker-1-left.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        SizedBox(height: 40.0),
                        TextBoleh(
                          26.0, 
                          'Kulit Berminyak', 
                          TextAlign.center,
                          Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 28.0),
                ],
              ),
              const TextBodoAmat(
                14.0, 
                'Kulit berminyak (oily skin) adalah kulit dengan kadar air dan minyak yang tinggi, yang ditandai dengan ciri-ciri:', 
                TextAlign.center,
                Colors.white
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/section-2/skin-3.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
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
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
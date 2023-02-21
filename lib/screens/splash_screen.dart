import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/home_screen.dart';

import '../widgets/text_bodo_amat.dart';
import '../widgets/text_boleh.dart';

class SplashScreen extends StatelessWidget {
  static const name = 'Splash Screen';
  static const routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: 360*scaleWidth,
              child: Image.asset(
                'assets/images/avatar-opening.webp',
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextBoleh(
                      28.0, 
                      'Hello beauty people..', 
                      TextAlign.center,
                      Colors.white
                    ),
                    const TextBoleh(
                      28.0, 
                      'Welcome to..',
                      TextAlign.center,
                      Colors.white
                    ),
                    const SizedBox(height: 25.0),
                    Image.asset(
                      'assets/images/logo.webp',
                      width: 243*scaleWidth,
                    ),
                    const SizedBox(height: 25.0),
                    const TextBodoAmat(
                      22.0, 
                      'Terimakasih telah mengunduh aplikasi ini di smartphone kamu, yuk tingkatkan pengetahuanmu tentang kosmetik bersama cosme.apps', 
                      TextAlign.center,
                      Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            right: 42.0*scaleWidth,
            child: InkWell(
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
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
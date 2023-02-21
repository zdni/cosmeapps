import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/splash_screen.dart';

class LogoScreen extends StatelessWidget {
  static const name = 'Logo Screen';
  static const routeName = '/logo';
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.jpg',
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 42.0,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              onTap: () => Navigator.pushNamed(context, SplashScreen.routeName),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 133, 161),
                    width: 1.0
                  ),
                  borderRadius: const BorderRadius.all( Radius.circular(15.0) )
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(255, 255, 133, 161),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
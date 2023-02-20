import 'package:flutter/material.dart';

class SecondTutorial extends StatelessWidget {
  const SecondTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          width: double.infinity,
          child: Image.asset(
            'assets/images/section-7/7-3.webp',
            fit: BoxFit.fitHeight,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
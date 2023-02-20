import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class ThirdTutorial extends StatelessWidget {
  const ThirdTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35.0),
            const TextBoleh(
              30.0, 
              'CEK', 
              TextAlign.center, 
              Colors.white
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TextBoleh(
                  30.0, 
                  'K', 
                  TextAlign.center, 
                  Colors.red
                ),
                TextBoleh(
                  30.0, 
                  'emasan', 
                  TextAlign.center, 
                  Colors.white
                ),
              ],
            ),
            const SizedBox(height: 35.0),
            SizedBox(
              width: 405*scaleWidth,
              child: Image.asset(
                'assets/images/section-7/7-4.webp',
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
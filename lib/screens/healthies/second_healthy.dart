import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/home_screen.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class SecondHealthy extends StatelessWidget {
  static const name = 'Second Healhty';
  static const routeName = '/second_healthy';
  const SecondHealthy({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scaleWidth = width/511;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 25.0),
                const TextBoleh(
                  40.0, 
                  '5 komponen kulit sehat, terdiri dari:', 
                  TextAlign.center, 
                  Colors.white,
                ),
                const SizedBox(height: 15.0),
                SizedBox(
                  width: 298*scaleWidth,
                  child: Image.asset(
                    'assets/images/section-5/5-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: const [
                    TextBoleh(
                      58.0, 
                      '1', 
                      TextAlign.center, 
                      Colors.white
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: TextBodoAmat(
                        22.0, 
                        'Warna kulit rata, warna kulit yang konsisten menandakan kulit sehat.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    TextBoleh(
                      58.0, 
                      '2', 
                      TextAlign.center, 
                      Colors.white
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: TextBodoAmat(
                        22.0, 
                        'warna kulit cerah dan tidak kusam.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    TextBoleh(
                      58.0, 
                      '3', 
                      TextAlign.center, 
                      Colors.white
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: TextBodoAmat(
                        22.0, 
                        'Tekstur halus dan bersih, saat disentuh kulit terasa mulus dan apabila dilihat dari dekat permukaan kulit rata.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    TextBoleh(
                      58.0, 
                      '4', 
                      TextAlign.center, 
                      Colors.white
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: TextBodoAmat(
                        22.0, 
                        'elastisitas kenyal dan terhidrasi, tidak ada sel kulit mati.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    TextBoleh(
                      58.0, 
                      '5', 
                      TextAlign.center, 
                      Colors.white
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: TextBodoAmat(
                        22.0, 
                        'sensasi kulit normal, tidak ada rasa yang bermasalah pada kulit.', 
                        TextAlign.left, 
                        Colors.white
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
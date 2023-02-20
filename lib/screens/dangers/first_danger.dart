import 'package:flutter/material.dart';
import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FirstDanger extends StatelessWidget {
  static const name = 'First Danger';
  static const routeName = '/first_danger';
  const FirstDanger({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double scaleWidth = width/511;
    double scaleHeight = height/1077;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 42.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      18.0,
                      'Terkadang diantara saat seseorang ingin memiliki kulit cantik, orang tersebut menggunakan jalan yang salah, yaitu dengan menggunakan kosmetik yang mengandung bahan berbahaya, yang pada awalnya memiliki efek baik, namun untuk penggunaan jangka panjang justru dapat menimbulkan masalah besar.',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            )
          ),
          SizedBox(
            width: 405*scaleWidth,
            height: 525*scaleHeight,
            child: Image.asset(
              'assets/images/section-6/6-2.webp',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
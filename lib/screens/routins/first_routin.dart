import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class FirstRoutin extends StatelessWidget {
  const FirstRoutin({super.key});

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
                  padding: EdgeInsets.symmetric(horizontal: 15.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      24.0,
                      'Okey beauty people, setelah mengetahui jenis kulit kita, saatnya kita ke skincare routine atau basic skincare yang sesuai dengan jenis kulit kita.',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0*scaleWidth),
                  child: const Center(
                    child: TextBodoAmat(
                      28.0,
                      'Jadi mulai sekarang jangan pakai skincare karena ikut-ikutan yaa...',
                      TextAlign.center,
                    Colors.white
                    ),
                  ),
                ),
              ],
            )
          ),
          SizedBox(
            width: 405*scaleWidth,
            height: 525*scaleHeight,
            child: Image.asset(
              'assets/images/section-3/3-1.png',
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
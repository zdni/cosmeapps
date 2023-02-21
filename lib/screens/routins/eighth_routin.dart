import 'package:flutter/material.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';

class EightRoutin extends StatelessWidget {
  const EightRoutin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double scaleWidth = width/511;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0*scaleWidth),
          child: Column(
            children: [
              const SizedBox(height: 45.0),
              const TextBoleh(
                26.0, 
                'Pelindung kulit (Sunscreen)', 
                TextAlign.center, 
                Colors.white,
              ),
              const SizedBox(height: 45.0),
              SizedBox(
                width: 280*scaleWidth,
                child: Image.asset(
                  'assets/images/section-3/3-4.webp',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 45.0),
              const TextBodoAmat(
                14.0, 
                'Sunscreen/ Sun Protection/ Tabir surya merupakan kosmetik pelindung yang memiliki peran penting dalam menjaga kesehatan kulit, mengingat aktivitas sehari-hari sebagian besar yang kita lakukan di luar rumah yang cenderung terpapar sinar matahari.', 
                TextAlign.center, 
                Colors.white,
              ),
              const SizedBox(height: 15.0),
              const TextBodoAmat(
                14.0, 
                'Namun, saat berada di dalam rumahpun sunscreen juga tetap digunakan, karena sifat sinar UV yang dapat menembus ke dalam rumah sekalipun.', 
                TextAlign.center, 
                Colors.white,
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class FourthRoutin extends StatefulWidget {
  const FourthRoutin({super.key});

  @override
  State<FourthRoutin> createState() => _FourthRoutinState();
}

class _FourthRoutinState extends State<FourthRoutin> {
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
              const SizedBox(height: 45.0),
              const Center(
                child: TextBoleh(
                  26.0, 
                  'Cleanser berdasarkan jenis kulit', 
                  TextAlign.center, 
                  Colors.white
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 140*scaleWidth,
                        child: Image.asset(
                          'assets/images/section-3/3-6.webp',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                        ),
                      ),
                      const TextBoleh(
                        18.0, 
                        'Kulit kering', 
                        TextAlign.center, 
                        Colors.white
                      ),
                    ],
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        TextBodoAmat(
                          14.0, 
                          'Kulit kering sebaiknya hindari penggunaan sabun cuci muka yang terlalu banyak busa (foaming cleanser) karena dapat menghilangkan minyak alami kulit.', 
                          TextAlign.left, 
                          Colors.white
                        ),
                        SizedBox(height: 8.0),
                        TextBodoAmat(
                          14.0, 
                          'Gunakan pembersih wajah dengan sifat pelembab dan tidak menghasilkan banyak busa sehingga tidak akan membuat kulit kering dan dehidrasi.', 
                          TextAlign.left, 
                          Colors.white
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        TextBodoAmat(
                          14.0, 
                          'Kulit berminyak sebaiknya menggunakan pembersih gel (gel cleanser) yang memiliki konsistensi bening seperti jeli yang membersihkan secara mendalam hanya dengan sekali cuci.', 
                          TextAlign.left, 
                          Colors.white
                        ),
                        SizedBox(height: 8.0),
                        TextBodoAmat(
                          14.0, 
                          'Pembersih yang mengandung ekstrak tumbuhan direkomendasikan untuk kulit berminyak karena dapat membersihkan pori-pori dan mengurangi penumpukan minyak juga digunakan untuk mengobati jerawat.', 
                          TextAlign.left, 
                          Colors.white
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 140*scaleWidth,
                        child: Image.asset(
                          'assets/images/section-3/3-7.webp',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                        ),
                      ),
                      const TextBoleh(
                        18.0, 
                        'Kulit berminyak', 
                        TextAlign.center, 
                        Colors.white
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 140*scaleWidth,
                        child: Image.asset(
                          'assets/images/section-3/3-6.webp',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.center,
                        ),
                      ),
                      const TextBoleh(
                        18.0, 
                        'Kulit normal', 
                        TextAlign.center, 
                        Colors.white
                      ),
                    ],
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        TextBodoAmat(
                          14.0, 
                          'Kulit normal sebaiknya menggunakan pembersih yang tidak banyak busa, agar tidak membuat kulit kering.', 
                          TextAlign.left, 
                          Colors.white
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }
}
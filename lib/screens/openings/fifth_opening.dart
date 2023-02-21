import 'package:cosmeapps/widgets/text_bodo_amat.dart';
import 'package:cosmeapps/widgets/text_boleh.dart';
import 'package:flutter/material.dart';

class FifthOpening extends StatelessWidget {
  static const name = 'Fifth Opening';
  static const routeName = '/fifth_opening';
  const FifthOpening({super.key});

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
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 28.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        SizedBox(height: 40.0),
                        TextBoleh(
                          26.0, 
                          'Penggolongan Kosmetik', 
                          TextAlign.center, 
                          Colors.white
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 28.0,
                    child: Image.asset(
                      'assets/images/stiker-1-right.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const TextBodoAmat(
                17.0, 
                '3) Berdasarkan kegunaan bagi kulit', 
                TextAlign.center, 
                Colors.white
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  const TextBoleh(
                    18.0, 
                    '"Kosmetik Perawatan kulit', 
                    TextAlign.center, 
                    Colors.white
                  ),
                  const TextBoleh(
                    18.0, 
                    '(Skincare Cosmetic)"', 
                    TextAlign.center, 
                    Colors.white
                  ),
                  const SizedBox(height: 8),
                  const TextBodoAmat(
                    14.0, 
                    'adalah kosmetik yang diperlukan untuk kebersihan dan kesehatan kulit, terdiri dari:', 
                    TextAlign.justify, 
                    Colors.black
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity-50,
                    child: Image.asset(
                      'assets/images/section-1/cosmetics-14-1.webp',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
              Column(
                children: [
                  const TextBoleh(
                    18.0, 
                    '"Kosmetik Riasan/Dekoratif', 
                    TextAlign.center, 
                    Colors.white
                  ),
                  const TextBoleh(
                    18.0, 
                    '(Makeup)"', 
                    TextAlign.center, 
                    Colors.white
                  ),
                  const SizedBox(height: 8),
                  const TextBodoAmat(
                    14.0, 
                    'adalah kosmetik yang diperlukan untuk merias dan menutup cacat pada kulit sehingga menghasilkan penampilan yang lebih menarik serta menimbulkan efek psikologis yang baik seperti percaya diri (self confidence)', 
                    TextAlign.justify, 
                    Colors.black
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 190*scaleWidth,
                    child: Image.asset(
                      'assets/images/section-1/cosmetics-15.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
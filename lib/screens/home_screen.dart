import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/opening_screen.dart';
import 'package:cosmeapps/screens/skin_screen.dart';
import 'package:cosmeapps/screens/bpom_screen.dart';

import 'package:cosmeapps/widgets/text_bodo_amat.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'Home Screen';
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var menus = [
      {
        'image': 'assets/images/section-1/1-2.png',
        'title': 'Definisi dan Penggolongan Kosmetik',
        'route': OpeningScreen.routeName,
      },
      {
        'image': 'assets/images/section-2/2-1.png',
        'title': 'Jenis Kulit',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/section-1/1-21.png',
        'title': 'Skincare Routine',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/section-2/2-1.png',
        'title': 'actived ingeredients dalam kosmetik',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/section-2/2-7.png',
        'title': 'Kulit Sehat',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/section-2/2-1.png',
        'title': 'Produk Kosmetik Berbahaya',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/section-2/2-1.png',
        'title': 'Memilih Kosmetik yang Aman',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/logo-bpom.png',
        'title': 'Portal BPOM',
        'route': BPOMScreen.routeName,
      },

    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45.0),
            ...(menus).map((menu) {
              return  InkWell(
                onTap: () => Navigator.pushNamed(context, menu['route']!),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 153, 204, 204),
                    borderRadius: BorderRadius.circular( 15.0 ),
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 7.0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 12.0,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80.0,
                        child: Image.asset(
                          menu['image']!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          const SizedBox(width: 30.0,),
                          Expanded(
                            flex: 1,
                            child: TextBodoAmat(
                              18.0, 
                              menu['title']!, 
                              TextAlign.center, 
                              Colors.white
                            ),
                          ),
                          const SizedBox(
                            width: 30.0,
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            const SizedBox(height: 45.0),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/opening_screen.dart';
import 'package:cosmeapps/screens/skin_screen.dart';
import 'package:cosmeapps/screens/routin_screen.dart';
import 'package:cosmeapps/screens/ingredient_screen.dart';
import 'package:cosmeapps/screens/healthy_screen.dart';
import 'package:cosmeapps/screens/danger_screen.dart';
import 'package:cosmeapps/screens/tutorial_screen.dart';
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
        'image': 'assets/images/icon-menu/menu-1.webp',
        'title': 'Definisi dan Penggolongan Kosmetik',
        'route': OpeningScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-2.webp',
        'title': 'Jenis Kulit',
        'route': SkinScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-3.webp',
        'title': 'Skincare Routine',
        'route': RoutinScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-4.webp',
        'title': 'Actived Ingeredients dalam kosmetik',
        'route': IngredientScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-5.webp',
        'title': 'Kulit Sehat',
        'route': HealthyScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-6.webp',
        'title': 'Produk Kosmetik Berbahaya',
        'route': DangerScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-7.webp',
        'title': 'Memilih Kosmetik yang Aman',
        'route': TutorialScreen.routeName,
      },
      {
        'image': 'assets/images/icon-menu/menu-8.webp',
        'title': 'Cek Keamanan Produk Kosmetik',
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
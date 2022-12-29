import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/routins/first_routin.dart';
import 'package:cosmeapps/screens/routins/second_routin.dart';
import 'package:cosmeapps/screens/routins/third_routin.dart';
import 'package:cosmeapps/screens/routins/fourth_routin.dart';
import 'package:cosmeapps/screens/routins/fifth_routin.dart';
import 'package:cosmeapps/screens/routins/sixth_routin.dart';
import 'package:cosmeapps/screens/routins/seventh_routin.dart';
import 'package:cosmeapps/screens/routins/eighth_routin.dart';
import 'package:cosmeapps/screens/routins/ninth_routin.dart';
import 'package:cosmeapps/screens/routins/tenth_routin.dart';
import 'package:cosmeapps/screens/routins/eleventh_routin.dart';
import 'package:cosmeapps/screens/routins/twelfth_routin.dart';
import 'package:cosmeapps/screens/routins/thirteenth_routin.dart';
import 'package:cosmeapps/screens/routins/fourteenth_routin.dart';

class RoutinScreen extends StatefulWidget {
  static const name = 'Routin Screen';
  static const routeName = '/routin';
  const RoutinScreen({super.key});

  @override
  State<RoutinScreen> createState() => _RoutinScreenState();
}

class _RoutinScreenState extends State<RoutinScreen> {
  final _pageController = PageController();
  double currentPage = 0;

  //indicator handler
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toDouble();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 204, 204),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: const [
                FirstRoutin(),
                SecondRoutin(),
                ThirdRoutin(),
                FourthRoutin(),
                FifthRoutin(),
                SixthRoutin(),
                SeventRoutin(),
                EightRoutin(),
                NinthRoutin(),
                TenthRoutin(),
                EleventhRoutin(),
                TwelfthRoutin(),
                ThirteenthRoutin(),
                FourteenthRoutin(),
              ],
            ),
          ),
          Positioned.fill(
            bottom: 20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  14, 
                  (index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      alignment: Alignment.centerLeft,
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPage == index ? Colors.white : Colors.white30,
                      ),
                    );
                  }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
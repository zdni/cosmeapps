import 'package:cosmeapps/screens/dangers/sixth_danger.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/dangers/first_danger.dart';
import 'package:cosmeapps/screens/dangers/second_danger.dart';
import 'package:cosmeapps/screens/dangers/third_danger.dart';
import 'package:cosmeapps/screens/dangers/fourth_danger.dart';
import 'package:cosmeapps/screens/dangers/fifth_danger.dart';

class DangerScreen extends StatefulWidget {
  static const name = 'Danger Screen';
  static const routeName = '/danger';
  const DangerScreen({super.key});

  @override
  State<DangerScreen> createState() => _DangerScreenState();
}

class _DangerScreenState extends State<DangerScreen> {
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
                FirstDanger(),
                SecondDanger(),
                ThirdDanger(),
                FourthDanger(),
                FifthDanger(),
                SixthDanger(),
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
                  6, 
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
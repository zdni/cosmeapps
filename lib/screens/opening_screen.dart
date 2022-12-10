import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/openings/first_opening.dart';
import 'package:cosmeapps/screens/openings/second_opening.dart';
import 'package:cosmeapps/screens/openings/third_opening.dart';
import 'package:cosmeapps/screens/openings/fourth_opening.dart';
import 'package:cosmeapps/screens/openings/fifth_opening.dart';
import 'package:cosmeapps/screens/openings/sixth_opening.dart';

class OpeningScreen extends StatefulWidget {
  static const name = 'BPOM Screen';
  static const routeName = '/opening';
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
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
                FirstOpening(),
                SecondOpening(),
                ThirdOpening(),
                FourthOpening(),
                FifthOpening(),
                SixthOpening(),
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
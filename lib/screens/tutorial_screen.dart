import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/tutorials/first_tutorial.dart';
import 'package:cosmeapps/screens/tutorials/second_tutorial.dart';
import 'package:cosmeapps/screens/tutorials/third_tutorial.dart';
import 'package:cosmeapps/screens/tutorials/fourth_tutorial.dart';
import 'package:cosmeapps/screens/tutorials/fifth_tutorial.dart';
import 'package:cosmeapps/screens/tutorials/sixth_tutorial.dart';

class TutorialScreen extends StatefulWidget {
  static const name = 'Tutorial Screen';
  static const routeName = '/tutorial_screen';
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
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
                FirstTutorial(),
                SecondTutorial(),
                ThirdTutorial(),
                FourthTutorial(),
                FifthTutorial(),
                SixthTutorial(),
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
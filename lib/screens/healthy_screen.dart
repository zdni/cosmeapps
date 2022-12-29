import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/healthies/first_healthy.dart';
import 'package:cosmeapps/screens/healthies/second_healthy.dart';

class HealthyScreen extends StatefulWidget {
  static const name = 'Healthy Screen';
  static const routeName = '/healthy';
  const HealthyScreen({super.key});

  @override
  State<HealthyScreen> createState() => _HealthyScreenState();
}

class _HealthyScreenState extends State<HealthyScreen> {
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
                FirstHealthy(),
                SecondHealthy(),
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
                  2, 
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
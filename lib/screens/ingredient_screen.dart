import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/ingredients/first_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/second_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/third_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/fourth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/fifth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/sixth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/seventh_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/eighth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/ninth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/tenth_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/eleventh_ingredient.dart';
import 'package:cosmeapps/screens/ingredients/twelfth_ingredient.dart';

class IngredientScreen extends StatefulWidget {
  static const name = 'Ingredient Screen';
  static const routeName = '/ingredient_screen';
  const IngredientScreen({super.key});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {
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
                FirstIngredient(),
                SecondIngredient(),
                ThirdIngredient(),
                FourthIngredient(),
                FifthIngredient(),
                SixthIngredient(),
                SeventhIngredient(),
                EighthIngredient(),
                NinthIngredient(),
                TenthIngredient(),
                EleventhIngredient(),
                TwelfthIngredient(),
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
                  12, 
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
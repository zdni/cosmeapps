import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/splash_screen.dart';
import 'package:cosmeapps/screens/home_screen.dart';
import 'package:cosmeapps/screens/opening_screen.dart';
import 'package:cosmeapps/screens/skin_screen.dart';
import 'package:cosmeapps/screens/routin_screen.dart';
import 'package:cosmeapps/screens/ingredient_screen.dart';
import 'package:cosmeapps/screens/healthy_screen.dart';
import 'package:cosmeapps/screens/danger_screen.dart';
import 'package:cosmeapps/screens/tutorial_screen.dart';
import 'package:cosmeapps/screens/bpom_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COSME.Apps',
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        OpeningScreen.routeName: (context) => const OpeningScreen(),
        SkinScreen.routeName: (context) => const SkinScreen(),
        RoutinScreen.routeName: (context) => const RoutinScreen(),
        IngredientScreen.routeName: (context) => const IngredientScreen(),
        HealthyScreen.routeName: (context) => const HealthyScreen(),
        DangerScreen.routeName: (context) => const DangerScreen(),
        TutorialScreen.routeName: (context) => const TutorialScreen(),
        BPOMScreen.routeName: (context) => const BPOMScreen(),
      },
    );
  }
}
import 'package:cosmeapps/screens/healthy_screen.dart';
import 'package:cosmeapps/screens/routin_screen.dart';
import 'package:flutter/material.dart';

import 'package:cosmeapps/screens/splash_screen.dart';
import 'package:cosmeapps/screens/home_screen.dart';
import 'package:cosmeapps/screens/opening_screen.dart';
import 'package:cosmeapps/screens/skin_screen.dart';
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
        HealthyScreen.routeName: (context) => const HealthyScreen(),
        BPOMScreen.routeName: (context) => const BPOMScreen(),
      },
    );
  }
}
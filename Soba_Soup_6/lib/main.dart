import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/Food.dart';
// ignore: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.orangeAccent.shade100,
          splash: const Image(
            image: AssetImage('Assets/images/fast1.png'),
            height: 500,
            width: 500,
          ),
          splashIconSize: 400,
          duration: 1000,
          nextScreen: const Food(),
        ));
  }
}

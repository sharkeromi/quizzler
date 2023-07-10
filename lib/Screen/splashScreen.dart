import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzler/Controller/splashScreenController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
            child: Image.asset(
          "assets/splash.gif",
          height: 150,
          width: 150,
        )),
      ),
    );
  }
}

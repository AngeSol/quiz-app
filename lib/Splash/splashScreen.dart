import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../welcome/welcomeScreen.dart';
import 'gradient_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).then((_) => {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => WelcomeScreen()
      ))
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Center(
          child: Lottie.asset("assets/lottiesfiles/tropheea.json"),
          /*child: Image.asset(
            "assets/images/logo",
          ),*/
        ),
      ),
    );
  }
}
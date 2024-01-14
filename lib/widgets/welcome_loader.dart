import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeLoader extends StatelessWidget {
  const WelcomeLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/namaste.json',
      width: 170.0,
    );
  }
}

import 'package:bhagwad_gita/db/database.dart';
import 'package:bhagwad_gita/screens/home_screen.dart';
import 'package:bhagwad_gita/screens/onboarding_screen.dart';
import 'package:bhagwad_gita/widgets/welcome_loader.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //?? init ->
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Database.showOnboarding
                ? const OnboardingScreen()
                : const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(flex: 1),
            WelcomeLoader(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

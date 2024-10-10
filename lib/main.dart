import 'package:flutter/material.dart';
import 'package:splash_screen/features/ui/screens/onboarding_screen1.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen1(),
    );
  }
}

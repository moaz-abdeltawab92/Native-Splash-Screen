import 'package:flutter/material.dart';
import 'package:splash_screen/features/ui/screens/OnboardingScreen2.dart';
import 'package:splash_screen/features/home/data/models/item.dart';
import 'package:splash_screen/features/ui/screens/OnboardingScreen3.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen(
        imagePath: 'assets/doctor.png',
        title: 'Find Trusted Doctors',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingScreen2()),
          );
        },
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingScreen3()),
          );
        },
      ),
    );
  }
}

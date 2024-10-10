import 'package:flutter/material.dart';
import 'package:splash_screen/features/home/data/models/item.dart';
import 'package:splash_screen/features/ui/screens/homescreen.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen(
        imagePath: 'assets/onboard3.png',
        title: 'Easy Appointments',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(),
              ));
        },
        onSkip: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(),
              ));
        },
      ),
    );
  }
}

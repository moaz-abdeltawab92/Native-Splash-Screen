import 'package:flutter/material.dart';
import 'package:splash_screen/features/ui/screens/OnboardingScreen3.dart';
import 'package:splash_screen/features/home/data/models/item.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen(
        imagePath: 'assets/nurse.png',
        title: 'Choose Best Doctors',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OnboardingScreen3()));
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

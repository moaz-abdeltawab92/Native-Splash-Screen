import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  Function() onTap;
  Function() onSkip;

  OnboardingScreen({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 420,
            top: -100,
            left: -80,
            child: Container(
              width: 290,
              height: 370,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 60, 194, 154),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 170,
                    backgroundImage: AssetImage(imagePath),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      onTap();
                    },
                    child: Text(
                      'Get Started',
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      backgroundColor: Color.fromARGB(255, 63, 189, 151),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      onSkip();
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Color.fromARGB(255, 56, 55, 55)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

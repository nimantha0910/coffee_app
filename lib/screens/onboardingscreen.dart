import 'package:flutter/material.dart';
import 'package:flutter_application_coffee/widgets/custom_button.dart';
import 'package:flutter_application_coffee/widgets/navigation_bar.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/splash/coffee_logo.png',
              width: screenSize.width,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            bottom: 90.0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  child: Text(
                    'Coffee so good, your taste buds will love it.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  child: Text(
                    'The best grain the finest roast, the powerful flavor',
                    style: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: CustomButton(
              title: 'Get Started',
              width: screenSize.width,
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationBarApp()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

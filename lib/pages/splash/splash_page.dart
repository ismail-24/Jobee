import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:jobee/pages/onboarding_pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();

  static String id = 'SplashPage';
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, OnBoardingPage.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Image.asset(
          //     AppImages.up,
          //     height: 252,
          //     width: 265,
          //     color: kColor,
          //   ),
          // ),
          Spacer(),
          ZoomIn(
            child: Center(
              child: Image.asset(
                'assets/splash.png',
                height: screenSize.width * 0.256,
                width: screenSize.width * 0.7391,
              ),
            ),
          ),
          Spacer(),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Image.asset(
          //     AppImages.down,
          //     height: 252,
          //     width: 265,
          //     color: kColor,
          //   ),
          // ),
        ],
      ),
    );
  }
}

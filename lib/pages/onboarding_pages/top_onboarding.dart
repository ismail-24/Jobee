import 'package:flutter/material.dart';

class TopSplash extends StatelessWidget {
  const TopSplash({
    super.key,
    required this.imageName,
    required this.mainText,
    required this.secondaryText,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
  final String imageName;
  final String mainText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Container(
          height: screenSize.width * 0.79708,
          width: screenSize.width * 0.7246,
          child: Image.asset(
            imageName,
            width: screenSize.width * width,
            height: screenSize.width * height,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.0386),
          child: Text(
            mainText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenSize.width * 0.053,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
              height: screenSize.width * 0.00483,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.0386),
          child: Text(
            secondaryText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF737373),
              fontSize: screenSize.width * 0.0386,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: screenSize.width * 0.00725,
            ),
          ),
        ),
        const Spacer(
          flex: 15,
        ),
      ],
    );
  }
}

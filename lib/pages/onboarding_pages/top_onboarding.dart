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

  final double? height;
  final double? width;
  final String imageName;
  final String mainText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 330,
          width: 300,
          child: Image.asset(
            imageName,
            width: width,
            height: height,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            mainText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
              height: 2,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            secondaryText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF737373),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 3,
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

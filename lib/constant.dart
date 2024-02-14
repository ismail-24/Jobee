import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobee/pages/onboarding_pages/top_onboarding.dart';

const List pages = [
  TopSplash(
    imageName: 'assets/onboarding_images/firest_image.png',
    mainText: 'Get your first jop faster than\n you think ',
    secondaryText:
        'Accelerate Your Career Journey with jobee:\n Your Fast Track to Landing that Dream Job! ',
    height: 260,
    width: 238,
  ),
  TopSplash(
    imageName: 'assets/onboarding_images/second_image.gif',
    mainText: 'Learn and explore and achieve\n new knowledege ',
    secondaryText:
        'On a level of learning and communication!\n Discover, ask, and connect ',
    height: 300,
    width: 280,
  ),
  TopSplash(
    imageName: 'assets/onboarding_images/third_image.png',
    mainText: 'We guarantee you the largest software companies ',
    secondaryText:
        'Discover job opportunities with the most prominent names in the business world.',
    height: 260,
    width: 238,
  ),
];

const Color kColor = Color(0xFF072AC8);
var logo =
    Container(width: 250, height: 90, child: Image.asset('assets/splash.png'));

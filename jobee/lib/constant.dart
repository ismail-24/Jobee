import 'package:flutter/material.dart';
import 'package:jobee/pages/splash_pages/top_splash.dart';

const List pages = [
  TopSplash(
    imageName: 'assets/splash_images/firest_image.png',
    mainText: 'Get your first jop faster than\n you think ',
    secondaryText:
        'Accelerate Your Career Journey with jobee:\n Your Fast Track to Landing that Dream Job! ',
    height: 260,
    width: 238,
  ),
  TopSplash(
    imageName: 'assets/splash_images/second_image.gif',
    mainText: 'Learn and explore and achieve\n new knowledege ',
    secondaryText:
        'On a level of learning and communication!\n Discover, ask, and connect ',
    height: 300,
    width: 280,
  ),
  TopSplash(
    imageName: 'assets/splash_images/third_image.png',
    mainText: 'We guarantee you the largest software companies ',
    secondaryText:
        'Discover job opportunities with the most prominent names in the business world.',
    height: 260,
    width: 238,
  ),
];

const Color kColor = Color(0xFF072AC8);

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobee/pages/onboarding_pages/top_onboarding.dart';

const List pages = [
  TopSplash(
    imageName: 'assets/onboarding_images/firest_image.png',
    mainText: 'Get your first jop faster than\n you think ',
    secondaryText:
        'Accelerate Your Career Journey with jobee:\n Your Fast Track to Landing that Dream Job! ',
    height: 0.628,
    width: 0.5749,
  ),
  TopSplash(
    imageName: 'assets/onboarding_images/second_image.gif',
    mainText: 'Learn and explore and achieve\n new knowledege ',
    secondaryText:
        'On a level of learning and communication!\n Discover, ask, and connect ',
    height: 0.5749,
    width: 0.6763,
  ),
  TopSplash(
    imageName: 'assets/onboarding_images/third_image.png',
    mainText: 'We guarantee you the largest software companies ',
    secondaryText:
        'Discover job opportunities with the most prominent names in the business world.',
    height: 0.628,
    width: 0.5749,
  ),
];

const Color kColor = Color(0xFF072AC8);
var logo =
    Container(width: 250, height: 90, child: Image.asset('assets/splash.png'));

const kMessage = 'message';
const kMessagesCollection = 'messages';
const kCreatedAt = 'createdAt';

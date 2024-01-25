import 'package:flutter/material.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomOnBoardPage extends StatelessWidget {
  const BottomOnBoardPage({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List pages;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 36.0),
          child: SmoothPageIndicator(
            textDirection: TextDirection.ltr,
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotColor: Color(0x33072AC8),
              activeDotColor: Color(0xFF072AC8),
              dotHeight: 10,
              dotWidth: 10,
              spacing: 2,
            ),
          ),
        ),
        const SizedBox(
          width: 240,
        ),
        GestureDetector(
          onTap: () {
            if (controller.page! < pages.length - 1) {
              controller.nextPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.decelerate,
              );
            } else {
              Navigator.pushNamed(context, LogInPage.id);
            }
          },
          child: Container(
            padding: const EdgeInsets.only(top: 11, left: 11),
            width: 170,
            height: 168,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFFFF9209),
                ),
              ),
            ),
            child: Container(
              width: 161,
              height: 171,
              decoration: const ShapeDecoration(
                color: Color(0xFF072AC8),
                shape: OvalBorder(),
              ),
              padding: const EdgeInsets.only(top: 58, left: 35),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

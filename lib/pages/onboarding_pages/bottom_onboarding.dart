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
    final screenSize = MediaQuery.of(context).size;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenSize.width * .07),
          child: SmoothPageIndicator(
            textDirection: TextDirection.ltr,
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: Color(0x33072AC8),
              activeDotColor: Color(0xFF072AC8),
              dotHeight: screenSize.height * .012,
              dotWidth: screenSize.width * .023,
              spacing: screenSize.width * .005,
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * .6,
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
            padding: EdgeInsets.only(
              top: screenSize.width * .02,
              left: screenSize.width * .02,
            ),
            width: screenSize.width * .39,
            height: screenSize.width * .4,
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
              width: screenSize.width * .3,
              height: screenSize.width * .35,
              decoration: const ShapeDecoration(
                color: Color(0xFF072AC8),
                shape: OvalBorder(),
              ),
              padding: EdgeInsets.only(
                top: screenSize.width * .14,
                left: screenSize.width * .085,
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * .048,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

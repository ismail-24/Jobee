import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/onboarding_pages/bottom_onboarding.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({
    super.key,
  });
  static String id = 'OnBoardingPage';

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: screenSize.width * 0.0579,
          ),
          color: kColor,
          onPressed: () {
            if (controller.page! <= pages.length - 1) {
              controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            }
          },
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LogInPage.id);
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: kColor,
                fontSize: screenSize.width * 0.0435,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return pages[index % pages.length];
            },
          ),
          Positioned(
            top: screenSize.width * 1.57,
            left: screenSize.width * .024,
            child: BottomOnBoardPage(controller: controller, pages: pages),
          )
        ],
      ),
    );
  }
}

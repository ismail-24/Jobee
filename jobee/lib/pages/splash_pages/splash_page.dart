import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/splash_pages/bottom_splash.dart';

class SplashPage extends StatefulWidget {
  SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
          color: kColor,
          onPressed: () {
            if (controller.page! <= pages.length - 1) {
              controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            }
          },
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                color: kColor,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
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
            top: 650,
            left: 10,
            child: BottomOnBoardPage(controller: controller, pages: pages),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Course',
                    style: TextStyle(
                      color: Color(0xFF090F24),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectSit eu praes dfee aliquet id sit et in scelerisque aliquam. Arcu fringillafd ggg egestas at molestie. Tellus neque mi cursus sed dfhabitantdfhabitant dfhabitantdfhabitantdf habitant turpis. Sc elerisque est consectetur turpis maecenas orci.',
                    style: TextStyle(
                        color: Color(0xFF848484),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 1.7),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(
                      color: Color(0xFF090F24),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      AboutCourseWidget(
                        title: 'Students',
                        info: '120,200',
                      ),
                      SizedBox(width: 90),
                      AboutCourseWidget(
                        title: 'Language',
                        info: 'English',
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      AboutCourseWidget(
                        title: 'Last update',
                        info: 'Tuesday, January 9',
                      ),
                      SizedBox(width: 90),
                      AboutCourseWidget(
                        title: 'Subtitle',
                        info: 'English and Arabic',
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      AboutCourseWidget(
                        title: 'Level',
                        info: 'Junior',
                      ),
                      SizedBox(width: 90),
                      AboutCourseWidget(
                        title: 'Access',
                        info: 'Mobile',
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutCourseWidget extends StatelessWidget {
  const AboutCourseWidget({
    super.key,
    required this.title,
    required this.info,
  });
  final String title, info;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF848484),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            info,
            style: const TextStyle(
              color: Color(0xFF090F24),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

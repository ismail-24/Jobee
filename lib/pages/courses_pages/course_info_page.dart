import 'package:flutter/material.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/about.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/certificate.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/lessons.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/reviws.dart';
import 'package:jobee/widgets/courses_widgets/custom_tab_bar.dart';
import 'package:jobee/widgets/courses_widgets/enroll_course_widget.dart';
import 'package:jobee/widgets/courses_widgets/course_info_widget.dart';

import '../../widgets/custom_widgets/custom_back_button.dart';

class CourseInformationPage extends StatelessWidget {
  const CourseInformationPage({super.key});
  static String id = 'CourseInformationPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leading: const CustomBackButton(),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/courses_images/lesson.png',
              height: 230,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: CourseInfo(),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTabBar(),
            Expanded(
              child: TabBarView(children: [
                const About(),
                Lessons(),
                const Certificate(),
                const Reviews(),
              ]),
            ),
            const Divider(
              thickness: .6,
              color: Color(0xffBDBDBD),
            ),
            const SizedBox(height: 10),
            const EnrollCourseWidget(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

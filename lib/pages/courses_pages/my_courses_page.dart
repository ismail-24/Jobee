import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/widgets/courses_widgets/progress_courses_temp.dart';
import 'package:jobee/widgets/custom_widgets/custom_back_button.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});
  static String id = 'MyCoursesPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          title: const Row(
            children: [
              CustomBackButton(),
              SizedBox(
                width: 100,
              ),
              Center(
                child: Text(
                  'My Courses',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Text('Ongoing'),
              Text('Completed'),
            ],
            indicatorColor: kColor,
            labelColor: kColor,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'Montserrat',
            ),
            labelPadding: EdgeInsets.only(bottom: 12),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, value) {
                return const CoursesProgress();
              },
            ),
            const Center(
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}

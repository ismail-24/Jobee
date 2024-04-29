import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobee/widgets/courses_widgets/Lesson_tile.dart';

class Lessons extends StatelessWidget {
  Lessons({super.key});
  List lessonsList = const [
    NumberOfLessons(),
    LessonTile(),
    LessonTile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: lessonsList.length,
          itemBuilder: (context, index) {
            return lessonsList[index];
          },
        ),
      ),
    );
  }
}

class NumberOfLessons extends StatelessWidget {
  const NumberOfLessons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Lessons ',
            style: TextStyle(
              color: Color(0xFF090F24),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '(32)',
            style: TextStyle(
              color: Color(0xFF072AC8),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

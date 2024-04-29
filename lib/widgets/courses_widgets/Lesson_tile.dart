import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        tileColor: Color(0x33E6EAFA),
        leading: LessonNumber(),
        trailing: SvgPicture.asset(
          'assets/icons_svg/courses_icons/play_video.svg',
          width: 40,
          height: 40,
        ),
        minVerticalPadding: 30,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Text(
            'intorduction to UX',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        subtitle: const Text(
          '10:00',
          style: TextStyle(
            color: Color(0xFF848484),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0.21,
          ),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}

class LessonNumber extends StatelessWidget {
  LessonNumber({
    super.key,
    this.lessonNumber = 0,
  });
  int lessonNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFFE6EAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(
        child: Text(
          '${lessonNumber++}', // increment lessonNumber each time widget is built
          style: const TextStyle(
            color: Color(0xFF072AC8),
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        tileColor: Color(0xFF090F24),
        leading: const LessonNumber(),
        trailing:
            SvgPicture.asset('assets/icons_svg/courses_icons/play_video.svg'),
        title: const Text(
          'intorduction to UX',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
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
  const LessonNumber({
    super.key,
    this.lessonNumber = 0,
  });
  final int lessonNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFFE6EAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Center(
        child: Text(
          '$lessonNumber',
          style: const TextStyle(
            color: Color(0xFF072AC8),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0.12,
          ),
        ),
      ),
    );
  }
}

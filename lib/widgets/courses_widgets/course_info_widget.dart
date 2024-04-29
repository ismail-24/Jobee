import 'package:flutter/material.dart';
import 'package:jobee/widgets/courses_widgets/lesson_info_widget.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: ShapeDecoration(
                color: const Color(0x14FF9209),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'Best Seller',
                style: TextStyle(
                  color: Color(0xFFFF9209),
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Color(0xffFFBB00),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: Text(
                    '4.9',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF090F24),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '(120 reviews)',
                  style: TextStyle(
                    color: Color(0xFF848484),
                    fontSize: 9,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Fundamental Of User Experience ',
          style: TextStyle(
            color: Color(0xFF090F24),
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            LessonInfo(
              title: 'Yahia Ahmed',
              imagePath: 'assets/icons_svg/user.svg',
            ),
            SizedBox(width: 36),
            LessonInfo(
              title: '32 Lessons',
              imagePath: 'assets/icons_svg/courses_icons/play.svg',
            ),
            SizedBox(width: 36),
            LessonInfo(
              title: 'Certificate',
              imagePath: 'assets/icons_svg/courses_icons/certificate.svg',
            ),
          ],
        ),
      ],
    );
  }
}

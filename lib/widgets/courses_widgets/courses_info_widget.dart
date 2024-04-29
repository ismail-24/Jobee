import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseInfoWidget extends StatelessWidget {
  const CourseInfoWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 26,
          height: 26,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: Color(0xFFF6F7FA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: SvgPicture.asset(
            imagePath,
            fit: BoxFit.none,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF626262),
            fontSize: 11,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

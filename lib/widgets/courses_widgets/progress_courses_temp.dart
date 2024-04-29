import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:jobee/constant.dart';

class CoursesProgress extends StatelessWidget {
  const CoursesProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 112,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: ShapeDecoration(
        color: const Color(0x33E6EAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 85,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/courses_images/courses.png'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: ShapeDecoration(
                      color: const Color(0x14FF9209),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Design',
                          style: TextStyle(
                            color: Color(0xFFFF9209),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 200,
                    height: 18,
                    child: Text(
                      'Fundamental of ux',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(
                        Icons.person_outlined,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Yahia Ahmed',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 11,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          child: GFProgressBar(
                            width: 230,
                            percentage: 0.5,
                            lineHeight: 6,
                            backgroundColor: Color(0xffE7E8F0),
                            progressBarColor: kColor,
                          ),
                        ),
                        const Text(
                          '150/150',
                          style: TextStyle(
                            color: Color(0xFF626262),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

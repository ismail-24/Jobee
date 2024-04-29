// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/courses_pages/course_info_page.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CourseInformationPage.id);
      },
      child: Container(
        width: 280,
        height: 210,
        margin: const EdgeInsets.only(right: 16),
        decoration: const BoxDecoration(color: Color(0x33E6EAFA)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 280,
              height: 115,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/courses_images/course.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Fundamental Of User Experience ',
                          style: TextStyle(
                            color: Color(0xFF090F24),
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                            color: Color(0xffFFBB00),
                          ),
                          Text(
                            '4.9',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF090F24),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'Yahia Ahmed',
                                  style: TextStyle(
                                    color: Color(0xFF626262),
                                    fontSize: 11,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'English',
                            style: TextStyle(
                              color: Color(0xFF626262),
                              fontSize: 11,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Expanded(
                            child: SizedBox(
                              child: Text(
                                '\$250.00',
                                style: TextStyle(
                                  color: kColor,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            padding: const EdgeInsets.symmetric(vertical: 2),
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
                                fontSize: 9,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
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

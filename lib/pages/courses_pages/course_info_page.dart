import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/about.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/certificate.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/lessons.dart';
import 'package:jobee/pages/courses_pages/tab_bar_view/reviws.dart';
import 'package:jobee/widgets/courses_widgets/courses_info_widget.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 6),
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
                      CourseInfoWidget(
                        title: 'Yahia Ahmed',
                        imagePath: 'assets/icons_svg/user.svg',
                      ),
                      SizedBox(width: 36),
                      CourseInfoWidget(
                        title: '32 Lessons',
                        imagePath: 'assets/icons_svg/courses_icons/play.svg',
                      ),
                      SizedBox(width: 36),
                      CourseInfoWidget(
                        title: 'Certificate',
                        imagePath:
                            'assets/icons_svg/courses_icons/certificate.svg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const TabBar(
              tabs: [
                Text('About'),
                Text('Lessons'),
                Text('Certificate'),
                Text('Reviews'),
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
            Expanded(
              child: TabBarView(children: [
                About(),
                Lessons(),
                Certificate(),
                Reviews(),
              ]),
            ),
            const Divider(
              thickness: .6,
              color: Color(0xffBDBDBD),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          color: Color(0xFF848484),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$250.00',
                        style: TextStyle(
                          color: Color(0xFF072AC8),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 230,
                  height: 50,
                  child: CustomButton(
                    onTap: () {},
                    text: 'Enroll Now',
                    color: kColor,
                    textColor: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

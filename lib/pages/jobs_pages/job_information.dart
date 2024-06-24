import 'package:flutter/material.dart';
import 'package:jobee/widgets/custom_widgets/custom_back_button.dart';

class JobInformationPage extends StatelessWidget {
  const JobInformationPage({super.key});
  static String id = 'JobInformationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          leading: const CustomBackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/jobs_icons/job_card/company2x2.png',
                        ),
                      ),
                      const SizedBox(height: 19),
                      const Center(
                        child: Text(
                          'Innova Hub ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Jop',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Hello everyone looking for a challenger graphic designer unleash your protentional with one of the biggest companies in Egypt join us now and be one of the company employees',
                              style: TextStyle(
                                color: Color(0xFF090F24),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Summary',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'As a Graphic Designer, you will be responsible for creating visual concepts and designs to communicate ideas that inspire, inform, or captivate our target audience. You will collaborate with various teams to understand project requirements and translate them into compelling visual solutions. Your creativity, attention to detail, and proficiency in design software will be crucial in producing high-quality graphics across various mediums.',
                              style: TextStyle(
                                color: Color(0xFF090F24),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job Requirements',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Bachelor\'s degree in Graphic Design, Visual Arts, or related field.\nProven professional experience with a diverse portfolio of design projects.\nProficiency in Adobe Creative Suite (Photoshop, Illustrator, InDesign).\nFamiliarity with design principles, color theory, typography, and layout design.\nKnowledge of printing processes for digital and print materials.\nStrong illustration skills and attention to detail.\nAbility to generate original design concepts and translate complex ideas visually.\nExcellent communication skills for conveying design concepts and collaborating with teams.\n',
                              style: TextStyle(
                                color: Color(0xFF090F24),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    child: Image.asset(
                                        'assets/jobs_icons/job_card/company2.png'),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'About the company',
                                    style: TextStyle(
                                      color: Color(0xFF090F24),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const SizedBox(
                        width: 324,
                        height: 120,
                        child: Text(
                          'At Innova Hub , we are at the forefront of software innovation, dedicated to creating cutting-edge solutions that transform industries. As we continue to push boundaries, we recognize the crucial role that design plays in communicating our brand and product vision.\n\n',
                          style: TextStyle(
                            color: Color(0xFF090F24),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

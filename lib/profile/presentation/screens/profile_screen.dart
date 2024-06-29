import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/core/resources/assets_path.dart';
import 'package:jobee/pages/courses_pages/my_courses_page.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/profile/profile.dart';
import 'package:jobee/widgets/profile_widgets/custom_profile_tile.dart';
import 'package:jobee/widgets/profile_widgets/profile_info_widget.dart';

import 'Tests & Quiz/create_quiz_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SizedBox(
              height: screenHeight * 0.1159,
              width: screenWidth * 0.2436,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent),
                        image: const DecorationImage(
                          image: AssetImage(AssetsPath.profile1),
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, EditProfile.id),
                          child: CircleAvatar(
                            child:
                                SvgPicture.asset('assets/icons_svg/edit.svg'),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.0058,
          ),
          Center(
            child: Text(
              'Abdallah Ahmed ',
              style: TextStyle(
                  fontSize: screenHeight * 0.0139,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
            ),
          ),
          // SizedBox(),
          Center(
            child: Text(
              emails,
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: screenHeight * 0.0119,
                height: 2,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.0116,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileInfoWidget(
                upTitle: 'Track Name',
                bottomTitle: 'Flutter',
              ),
              ProfileInfoWidget(
                upTitle: 'Tests Score ',
                bottomTitle: '125',
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.029,
          ),
          CustomProfileListTile(
            onTap: () => Navigator.pushNamed(context, MyCoursesPage.id),
            title: 'My Courses',
            imagePAth: AssetsPath.coursesIcon,
          ),
          CustomProfileListTile(
            title: 'My Cv',
            imagePAth: AssetsPath.cvIcon,
            onTap: () => Navigator.pushNamed(context, CreateCVScreen.id),
          ),
          CustomProfileListTile(
            onTap: () => Navigator.pushNamed(context, CreateQuizScreen.id),
            title: 'Tests & Quiz\'s',
            imagePAth: AssetsPath.testIcon,
          ),
          const CustomProfileListTile(
            title: 'Payment',
            imagePAth: AssetsPath.dollarIcon,
          ),
          CustomProfileListTile(
            title: 'Jop Saved',
            imagePAth: AssetsPath.jobIcon,
            onTap: () => Navigator.pushNamed(context, CreateJobSaved.id),
          ),
          const CustomProfileListTile(
            title: 'App Setting',
            imagePAth: AssetsPath.settingIcon,
          ),
        ],
      ),
    );
  }
}

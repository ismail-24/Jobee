import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/core/resources/assets_path.dart';
import 'package:jobee/pages/courses_pages/my_courses_page.dart';
import 'package:jobee/profile/profile.dart';
import 'package:jobee/widgets/profile_widgets/custom_profile_tile.dart';
import 'package:jobee/widgets/profile_widgets/profile_info_widget.dart';

import 'Tests & Quiz/create_quiz_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent),
                        //TODO add image
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
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              'Abdallah Ahmed ',
              style: TextStyle(
                  fontSize: 12,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
            ),
          ),
          // SizedBox(),
          const Center(
            child: Text(
              'abdallahzikrallah@gmail.com ',
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: 8,
                height: 2,
                fontWeight: FontWeight.w400,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
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
          const SizedBox(
            height: 25,
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

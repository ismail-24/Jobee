import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/chat_pages/chats_list_page.dart';
import 'package:jobee/pages/courses_pages/courses_page.dart';
import 'package:jobee/pages/craete_post_pages/create_post_page.dart';
import 'package:jobee/pages/home_page.dart';
import 'package:jobee/pages/notifications_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static String id = 'NavBar';
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List pages = [
    HomePage(),
    const NotificationPage(),
    const CoursesPage(),
    ChatsListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CreatePostPage.id);
        },
        backgroundColor: kColor,
        elevation: 0,
        child: SvgPicture.asset(
          'assets/icons_svg/nav_bar_icons/add.svg',
          color: Colors.white,
        ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (value) => setState(
                () => this.index = value,
              ),
          elevation: 0,
          indicatorColor: Colors.transparent,
          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
          height: 70,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons_svg/nav_bar_icons/home.svg',
                color: const Color(0xff848484),
              ),
              selectedIcon:
                  SvgPicture.asset('assets/icons_svg/nav_bar_icons/home.svg'),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icons_svg/nav_bar_icons/jobs.svg'),
              selectedIcon: SvgPicture.asset(
                'assets/icons_svg/nav_bar_icons/jobs.svg',
                color: kColor,
              ),
              label: 'Jobs',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                  'assets/icons_svg/nav_bar_icons/courses.svg'),
              selectedIcon: SvgPicture.asset(
                'assets/icons_svg/nav_bar_icons/courses.svg',
                color: kColor,
              ),
              label: 'Courses',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                  'assets/icons_svg/nav_bar_icons/profile.svg'),
              selectedIcon: SvgPicture.asset(
                'assets/icons_svg/nav_bar_icons/profile.svg',
                color: kColor,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}

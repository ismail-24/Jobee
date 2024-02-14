import 'package:flutter/material.dart';
import 'package:jobee/pages/chats_list_page.dart';
import 'package:jobee/pages/craete_post_pages/create_post_page.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/pages/junior_info/junior_info_page1.dart';
import 'package:jobee/pages/junior_info/junior_info_page2.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/notifications_page.dart';
import 'package:jobee/pages/onboarding_pages/onboarding_page.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/pages/sign_up_page.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const Jobee());
}

class Jobee extends StatelessWidget {
  const Jobee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoardingPage.id: (context) => OnBoardingPage(),
        LogInPage.id: (context) => const LogInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        selectPositionPage.id: (context) => const selectPositionPage(),
        JuniorInfoPage1.id: (context) => const JuniorInfoPage1(),
        JuniorInfoPage2.id: (context) => const JuniorInfoPage2(),
        CommunityPage.id: (context) => const CommunityPage(),
        CreatePostPage.id: (context) => const CreatePostPage(),
        ChatsListPage.id: (context) => ChatsListPage(),
        NotificationPage.id: (context) => const NotificationPage(),
        BottomNavBar.id: (context) => const BottomNavBar(),
      },
      initialRoute: OnBoardingPage.id,
    );
  }
}

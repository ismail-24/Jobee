import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubits/chat_cubit/chat_cubit.dart';
import 'package:jobee/cubits/login_cubit/login_cubit.dart';
import 'package:jobee/cubits/register_cubit/register_cubit.dart';
import 'package:jobee/firebase_options.dart';
import 'package:jobee/pages/chat_pages/chat_page.dart';
import 'package:jobee/pages/chat_pages/chats_list_page.dart';
import 'package:jobee/pages/courses_pages/course_info_page.dart';
import 'package:jobee/pages/courses_pages/my_courses_page.dart';
import 'package:jobee/pages/craete_post_pages/create_post_page.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/pages/junior_info/junior_info_page1.dart';
import 'package:jobee/pages/junior_info/junior_info_page2.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/notifications_page.dart';
import 'package:jobee/pages/onboarding_pages/onboarding_page.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/pages/register_page.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Jobee());
}

class Jobee extends StatelessWidget {
  const Jobee({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingPage.id: (context) => OnBoardingPage(),
          LogInPage.id: (context) => LogInPage(),
          RegisterPage.id: (context) => RegisterPage(),
          SelectPositionPage.id: (context) => SelectPositionPage(),
          JuniorInfoPage1.id: (context) => const JuniorInfoPage1(),
          JuniorInfoPage2.id: (context) => const JuniorInfoPage2(),
          CommunityPage.id: (context) => const CommunityPage(),
          CreatePostPage.id: (context) => const CreatePostPage(),
          ChatsListPage.id: (context) => ChatsListPage(),
          NotificationPage.id: (context) => const NotificationPage(),
          BottomNavBar.id: (context) => const BottomNavBar(),
          MyCoursesPage.id: (context) => const MyCoursesPage(),
          CourseInformationPage.id: (context) => const CourseInformationPage(),
          ChatPage.id: (context) => ChatPage(),
        },
        initialRoute: BottomNavBar.id,
      ),
    );
  }
}

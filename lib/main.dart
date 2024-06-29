import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/cubits/chat_cubit/chat_cubit.dart';
import 'package:jobee/cubits/login_cubit/login_cubit.dart';
import 'package:jobee/cubits/posts_cubits/posts_cubit/posts_cubit.dart';
import 'package:jobee/cubits/register_cubit/register_cubit.dart';
import 'package:jobee/firebase_options.dart';
import 'package:jobee/models/posts_model/post_model.dart';
import 'package:jobee/pages/chat_pages/chat_page.dart';
import 'package:jobee/pages/chat_pages/chats_list_page.dart';
import 'package:jobee/pages/courses_pages/course_info_page.dart';
import 'package:jobee/pages/courses_pages/my_courses_page.dart';
import 'package:jobee/pages/craete_post_pages/create_post_page.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/pages/jobs_pages/categories_page.dart';
import 'package:jobee/pages/jobs_pages/job_information.dart';
import 'package:jobee/pages/register_pages/instructor_info/instructor_info1.dart';
import 'package:jobee/pages/register_pages/instructor_info/instructor_info2.dart';
import 'package:jobee/pages/register_pages/junior_info/junior_info_page1.dart';
import 'package:jobee/pages/register_pages/junior_info/junior_info_page2.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/notifications_page.dart';
import 'package:jobee/pages/onboarding_pages/onboarding_page.dart';
import 'package:jobee/pages/register_pages/startUp_info/startUp_info.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/pages/splash/splash_page.dart';
import 'package:jobee/profile/presentation/screens/Tests%20&%20Quiz/create_quiz_screen_1.dart';
import 'package:jobee/profile/presentation/screens/quizzes/fetures/home/views/quiz_page.dart';
import 'package:jobee/simple_bloc_observer.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'pages/register_pages/register_page.dart';
import 'profile/presentation/screens/Tests & Quiz/create_quiz_screen.dart';
import 'profile/presentation/screens/Tests & Quiz/quiz_result_page.dart';
import 'profile/profile.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(PostModelAdapter());
  await Hive.openBox<PostModel>(kPostsBox);
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
        BlocProvider(
          create: (context) => PostsCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          CreateCVScreen.id: (context) => const CreateCVScreen(),
          CreateCV1Screen.id: (context) => const CreateCV1Screen(),
          CreateCV2Screen.id: (context) => const CreateCV2Screen(),
          CreateCV3Screen.id: (context) => const CreateCV3Screen(),
          CreateCV4Screen.id: (context) => const CreateCV4Screen(),
          CreateCV5Screen.id: (context) => const CreateCV5Screen(),
          CreateJobSaved.id: (context) => const CreateJobSaved(),
          EditProfile.id: (context) => EditProfile(),
          CreateQuizScreen.id: (context) => const CreateQuizScreen(),
          CreateQuiz1Screen.id: (context) => const CreateQuiz1Screen(),
          QuizResultPage.id: (context) => const QuizResultPage(),
          QuizPage.id: (context) => QuizPage(),
          OnBoardingPage.id: (context) => OnBoardingPage(),
          LogInPage.id: (context) => LogInPage(),
          RegisterPage.id: (context) => RegisterPage(),
          SelectPositionPage.id: (context) => SelectPositionPage(),
          JuniorInfoPage1.id: (context) => JuniorInfoPage1(),
          JuniorInfoPage2.id: (context) => const JuniorInfoPage2(),
          StartUpInfoPage.id: (context) => const StartUpInfoPage(),
          InstructorInfoPage1.id: (context) => const InstructorInfoPage1(),
          InstructorInfoPage2.id: (context) => const InstructorInfoPage2(),
          CommunityPage.id: (context) => const CommunityPage(),
          CreatePostPage.id: (context) => CreatePostPage(),
          ChatsListPage.id: (context) => ChatsListPage(),
          NotificationPage.id: (context) => const NotificationPage(),
          BottomNavBar.id: (context) => const BottomNavBar(),
          MyCoursesPage.id: (context) => const MyCoursesPage(),
          CourseInformationPage.id: (context) => const CourseInformationPage(),
          ChatPage.id: (context) => ChatPage(),
          SplashPage.id: (context) => SplashPage(),
          CategriesPage.id: (context) => CategriesPage(),
          JobInformationPage.id: (context) => JobInformationPage(),
        },
        initialRoute: SplashPage.id,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/core/widgets/quiz_anser.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

import '../create_cv_screen_1.dart';
import 'create_quiz_screen_3.dart';

class CreateQuiz2Screen extends StatelessWidget {
  const CreateQuiz2Screen({super.key});
  static const String id = 'CreateQuiz2Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: "Tests & Quiz's"),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'Typography & Hierarchy ',
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: 12,
                height: 2,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const SizedBox(),
          const SizedBox(),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Q 1',
              style: TextStyle(
                color: Color(0xFF848484),
                fontSize: 12,
                height: 2,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              ' Which of the typographic is primarily \nResponsible for guiding readers\n through the content and indicating\n the information ? ',
              style: TextStyle(
                //  color:Color(0xFF848484),
                color: Color(0xFF000000),

                fontSize: 16,
                height: 2,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          const QuizAnserCard(
            isSelected: true,
            textanser: ' Font Size',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' Font Color',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' Letter Spacing',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' All Of Above',
          ),
          //Expanded(
          // child: ListView.builder(itemCount:4
          //    ,itemBuilder:(context,index){
          // return QuizAnserCard(
          //   isSelected: index==0,
          //   textanser: 'Font Size',
          // );
          //      }
          //      )),
          //
          Padding(
            padding: const EdgeInsets.all(6),
            child: CustomButton(
              onTap: () => Navigator.pushNamed(context, CreateQuiz3Screen.id),
              text: 'Next',
              color: const Color.fromRGBO(7, 42, 200, 1),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

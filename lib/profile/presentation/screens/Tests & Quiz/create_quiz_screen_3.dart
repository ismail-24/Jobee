import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

import '../../../../core/widgets/quiz_anser.dart';
import 'create_quiz_screen_4.dart';

class CreateQuiz3Screen extends StatelessWidget {
  const CreateQuiz3Screen({super.key});
  static const String id = 'CreateQuiz3Screen';

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
              'Q 2',
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
              "Which of the following element's plays\n a crucial role in establishing visual\n hierarchy in typography?",
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
            textanser: ' Line Height',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' Font Weight',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' Typography Grid',
          ),
          const QuizAnserCard(
            isSelected: false,
            textanser: ' Heading Structure',
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
              onTap: () => Navigator.pushNamed(context, CreateQuiz4Screen.id),
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

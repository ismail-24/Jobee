import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/profile/presentation/screens/quizzes/fetures/home/models/question%20_model.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_text.dart';
import 'widgets/check_answers_body.dart';

class CheckAnswer extends StatelessWidget {
  final List<QuestionModel> questions;
  const CheckAnswer({
    super.key,
    required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
                color: kColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )),
            child: Center(
              child: Text(
                AppTexts.checkanswer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Appcolor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          CheckAnswerBody(
            questions: questions,
          ),
        ],
      ),
    );
  }
}

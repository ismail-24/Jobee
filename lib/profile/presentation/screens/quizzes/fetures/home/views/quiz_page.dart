import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/profile/presentation/screens/Tests%20&%20Quiz/quiz_result_page.dart';

import '../../../../Tests & Quiz/create_quiz_screen_1.dart';
import '../../../core/utils/app_text.dart';
import '../../check_answer/views/widgets/custom_button.dart';
import '../../views/widgets/result_dialog.dart';
import '../models/question _model.dart';

class QuizPage extends StatefulWidget {
  // final bool resetQuestion;
  static String id = 'quizPage';
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _Question1State();
}

class _Question1State extends State<QuizPage> {
  int questonsNumber = 1;
  double percentage = 0.25;
  Color answerColor = const Color(0x33E6EAFA);
  int selectedAnswerIndex = -1;

// void initState(){
//   super.initState();
//   if(widget.resetQuestion){
//     setState(() {
//       questionindex=0;
//       questonsNumber=1;
//     });
//   }
// }
  List<QuestionModel> questions = [
    QuestionModel(
      title:
          "Which of the typographic is primarily Responsible for guiding readers through the content and indicating the information ?",
      answer: [
        "Font Size",
        "Font Color",
        "Letter Spacing",
        "All Of Above",
      ],
      correctAnswer: "Font Size",
      selectedAnswer: null,
    ),
    QuestionModel(
      title: "Who is the real club of the century?",
      answer: ["elmasry fc", "Alahly fc", "Zamalec fc", "Enby fc"],
      correctAnswer: "Alahly fc",
      selectedAnswer: null,
    ),
    QuestionModel(
      title: "Who is your favorite football Team?",
      answer: ["Real Madrid", "Barcelona", "Man city"],
      correctAnswer: "Real Madrid",
      selectedAnswer: null,
    ),
    QuestionModel(
      title: "Who is your favorite Local football player?",
      answer: ["Emad Met3eb", "Shekabala", "Abutreka", "Barakat"],
      correctAnswer: "Abutreka",
      selectedAnswer: null,
    ),
  ];

  changeSelectedAnswerToNull() {
    for (int i = 0; i < questions.length; i++) {
      questions[i].selectedAnswer = null;
      questions[i].answer.forEach((answer) {
        answerColor = const Color(0x33E6EAFA); // Reset answerColor to default
      });
      selectedAnswerIndex = -1;
    }
  }

  changeSelectedAnswerColorToNull() {
    for (int i = 0; i < questions.length; i++) {
      questions[i].answer.forEach((answer) {
        answerColor = const Color(0x33E6EAFA); // Reset answerColor to default
      });
      selectedAnswerIndex = -1;
    }
  }

  int score = 0;
  checkScore() {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer == questions[i].selectedAnswer) {
        score += 10;
      }
    }
  }

  int questionindex = 0;

  plusQuestionIndex() {
    if (questionindex < questions.length - 1) {
      if (questions[questionindex].selectedAnswer != null) {
        changeSelectedAnswerColorToNull();
        questionindex++;
        questonsNumber++;
        percentage += .25;
        answerColor = const Color(0x33E6EAFA);

        setState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
        setState(() {});
      }
    } else {
      if (questions[questionindex].selectedAnswer != null) {
        checkScore();
        showDialog(
          context: context,
          builder: (cont) {
            return QuizResultPage(
              questions: questions,
              score: score,
              length: questions.length,
              onTap: () {
                questionindex = 0;
                score = 0;
                questonsNumber = 1;
                percentage = 0.25;
                answerColor = const Color(0x33E6EAFA);
                changeSelectedAnswerToNull();
                Navigator.pushNamed(context, CreateQuiz1Screen.id);
                setState(() {});
              },
            );
          },
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("choose one answer"),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Test & Quizes'),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 34,
            ),
            const Center(child: Text('Typography & Hierarchy')),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 390,
              child: GFProgressBar(
                width: 350,
                percentage: percentage,
                lineHeight: 10,
                backgroundColor: const Color(0xffE7E8F0),
                progressBarColor: kColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text('Q$questonsNumber'),
            const SizedBox(
              height: 10,
            ),
            Text(
              questions[questionindex].title,
              style: const TextStyle(
                color: Color(0xFF263238),
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ...questions[questionindex].answer.map(
              (answer) {
                return Container(
                  width: 370,
                  height: 65,
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: ShapeDecoration(
                    color: selectedAnswerIndex ==
                            questions[questionindex].answer.indexOf(answer)
                        ? const Color(0xE8E6EAFA)
                        : answerColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        activeColor: kColor,
                        value: answer,
                        groupValue: questions[questionindex].selectedAnswer,
                        onChanged: (x) {
                          selectedAnswerIndex =
                              questions[questionindex].answer.indexOf(x!);
                          x = questions[questionindex].selectedAnswer = x;
                          setState(() {});
                        },
                      ),
                      Text(
                        answer,
                        style: TextStyle(
                          color: selectedAnswerIndex ==
                                  questions[questionindex]
                                      .answer
                                      .indexOf(answer)
                              ? kColor
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              width: double.infinity,
              child: CustomQuizButton(
                onTap: () {
                  plusQuestionIndex();
                  if (questionindex < questions.length - 1) {}
                  setState(() {});
                },
                text: Text(
                  questionindex == questions.length - 1
                      ? AppTexts.endTask
                      : AppTexts.next,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

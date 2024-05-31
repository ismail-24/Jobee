import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

import 'create_quiz_screen_2.dart';

class CreateQuiz1Screen extends StatelessWidget {
  const CreateQuiz1Screen({super.key});
  static const String id = 'CreateQuiz1Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context: context, title: "Tests & Quiz's"),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                // child: Image.asset('assets/face1.jpeg',height: 35,width: 35,
                                //  fit: BoxFit.cover,),
                                child: Container(
                                  // margin: EdgeInsetsDirectional.all(10) ,
                                  //color: Colors.blue,
                                  // height: 70,
                                  // width: 70,
                                  child: const CircleAvatar(
                                    // backgroundColor:Colors.cyan ,
                                    backgroundImage: AssetImage(
                                      'assets/face1.jpeg',
                                      // height:700,width:200
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Welcome Yehia !",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.5,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF000000)),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  "Cairo, Egypt",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF000000)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Current Score ',
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color(0xFF000000)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AssetsPath.o,
                                height: 16,
                                width: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "125",
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF072AC8),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 1,),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Daily Tasks",
                  style: TextStyle(
                      fontSize: 12,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      color: const Color.fromRGBO(189, 189, 189, 0.6),
                      child: const Center(
                        child: Text(
                          "11",
                          style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Center(
                child: Text(
                  "You Have 5 Tasks Today !",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "UI / UX Desgin",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)),
                ),
              ),
              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(12),
                child: CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, CreateQuiz2Screen.id),
                  text: 'Continue',
                  color: const Color.fromRGBO(7, 42, 200, 1),
                  textColor: Colors.white,
                ),
              ),
            ]));
  }
}

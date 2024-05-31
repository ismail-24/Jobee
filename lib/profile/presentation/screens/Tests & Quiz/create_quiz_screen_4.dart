import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';

import '../../../../constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'create_quiz_screen_5.dart';

class CreateQuiz4Screen extends StatelessWidget {
  const CreateQuiz4Screen({super.key});
  static const String id = 'CreateQuiz4Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: "Tests & Quiz's"),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
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
            //Slider(value: 4, onChanged:, ),

            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Q 3',
                style: TextStyle(
                  color: Color(0xFF848484),
                  fontSize: 12,
                  height: 2,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            // SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Explain The importance of establishing \n a clear visual hierarchy in typography  ',
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
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: "Type your Answer",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: kColor),
                  ),
                ),
              ),
            ),

            //Spacer(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: CustomButton(
                onTap: () => Navigator.pushNamed(context, CreateQuiz5Screen.id),
                text: 'End Test',
                color: const Color.fromRGBO(7, 42, 200, 1),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

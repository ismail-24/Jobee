import 'package:flutter/material.dart';
import 'package:jobee/profile/presentation/screens/Tests%20&%20Quiz/create_quiz_screen_1.dart';

import '../../../../constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

class CreateQuizScreen extends StatelessWidget {
  const CreateQuizScreen({super.key});
  static const String id = 'CreateQuizScreen';
  void dropdowncallback(String? selectedvalue) {
    if (selectedvalue is String) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Tests & Quiz's",
          style: TextStyle(
            color: Color(0xFF090F24),
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
                child: Text(
              'Are You Ready For The Following',
              style: TextStyle(
                  fontSize: 16,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
            )),
            // SizedBox(height: 12,),
            const Center(
                child: Text(
              ' Challenges ? ',
              style: TextStyle(
                  fontSize: 16,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
            )),
            //SizedBox(height: 6,),
            Image.asset('assets/startquiz.gif'),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    label: const Text("Track"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: kColor),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'UIUX',
                      child: Text('UI UX'),
                    ),
                    DropdownMenuItem(
                      value: 'Flutter',
                      child: Text('Flutter'),
                    ),
                    DropdownMenuItem(
                      value: 'Frontend',
                      child: Text('Frontend'),
                    ),
                    DropdownMenuItem(
                      value: 'Backend',
                      child: Text('Backend'),
                    ),
                  ],
                  onChanged: dropdowncallback),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    label: const Text("Track Level"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: kColor),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Fresh',
                      child: Text('Fresh'),
                    ),
                    DropdownMenuItem(
                      value: 'Junior',
                      child: Text('Junior'),
                    ),
                    DropdownMenuItem(
                      value: 'Middle',
                      child: Text('Middle'),
                    ),
                    DropdownMenuItem(
                      value: 'Senior',
                      child: Text('Senior'),
                    ),
                  ],
                  onChanged: dropdowncallback),
            ),

            Padding(
              padding: const EdgeInsets.all(0),
              child: Expanded(
                child: CustomButton(
                  onTap: () =>
                      Navigator.pushNamed(context, CreateQuiz1Screen.id),
                  text: 'Save',
                  color: const Color.fromRGBO(7, 42, 200, 1),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/register_pages/instructor_info/instructor_info2.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_dropdown.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';

class InstructorInfoPage1 extends StatelessWidget {
  const InstructorInfoPage1({super.key});
  static String id = 'InstructorInfo1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            logo,
            const SizedBox(
              height: 48,
            ),
            const Text(
              'Instractor Data',
              style: TextStyle(
                color: Color(0xFF090F24),
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0.07,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Please enter this following data',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0.21,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              labelText: 'Name',
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              labelText: 'Age',
            ),
            const SizedBox(
              height: 24,
            ),
            CustomDropdownButton(),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                text: 'Next Step',
                onTap: () {
                  Navigator.pushNamed(context, InstructorInfoPage2.id);
                },
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                color: Colors.white,
                textColor: kColor,
                text: 'Back',
                elevation: 0,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

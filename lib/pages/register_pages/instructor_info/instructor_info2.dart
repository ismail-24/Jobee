import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_dropdown.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/upload_cv.dart';

class InstructorInfoPage2 extends StatelessWidget {
  const InstructorInfoPage2({super.key});
  static String id = 'InstructorInfo2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
            logo,
            const SizedBox(
              height: 32,
            ),
            Container(
              width: 90,
              height: 95,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFFC9C9C9),
                    radius: 42,
                    child: SvgPicture.asset('assets/icons_svg/profile.svg'),
                  ),
                  Positioned(
                    top: 65,
                    left: 55,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFFF5F6FF),
                      radius: 14,
                      child: SvgPicture.asset('assets/icons_svg/edit.svg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              labelText: 'E-mail',
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              labelText: 'Facebook link',
            ),
            const SizedBox(
              height: 24,
            ),
            CustomDropdownButton(),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              height: 120,
              labelText: 'About you',
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                text: 'Save',
                color: kColor,
                textColor: Colors.white,
                onTap: () => Navigator.pushNamed(context, BottomNavBar.id),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

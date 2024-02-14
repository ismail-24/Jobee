import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/widgets/custom_button.dart';
import 'package:jobee/widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/upload_cv.dart';

class JuniorInfoPage2 extends StatelessWidget {
  const JuniorInfoPage2({super.key});
  static String id = 'NextStep';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            labelText: 'Experience Years',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            labelText: 'Military status',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            height: 120,
            labelText: 'About you',
          ),
          const SizedBox(
            height: 24,
          ),
          UploadCv(),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            child: CustomButton(
              text: 'Save',
              color: kColor,
              textColor: Colors.white,
              onTap: () => Navigator.pushNamed(context, CommunityPage.id),
            ),
          ),
        ],
      ),
    );
  }
}

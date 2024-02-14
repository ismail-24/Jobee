import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/junior_info/junior_info_page1.dart';
import 'package:jobee/widgets/custom_button.dart';
import 'package:jobee/widgets/position_choises.dart';

class selectPositionPage extends StatelessWidget {
  const selectPositionPage({super.key});

  static String id = 'selectPositionPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 65,
          ),
          logo,
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Please Select one Of The Following ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          const Text(
            'You Are A',
            style: TextStyle(
              color: Color(0xFF090F24),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                choises(
                  imagePath: 'assets/icons_svg/junior.svg',
                  text: 'junior / Student',
                ),
                choises(
                  imagePath: 'assets/icons_svg/company.svg',
                  text: 'Company',
                ),
                choises(
                  imagePath: 'assets/icons_svg/inst.svg',
                  text: 'Instructor',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 96,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onTap: () {
                Navigator.pushNamed(context, JuniorInfoPage1.id);
              },
              text: 'Select',
              color: kColor,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

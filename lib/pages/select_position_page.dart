import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/register_pages/instructor_info/instructor_info1.dart';
import 'package:jobee/pages/register_pages/junior_info/junior_info_page1.dart';
import 'package:jobee/pages/register_pages/startUp_info/startUp_info.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/position_choises.dart';

class SelectPositionPage extends StatefulWidget {
  SelectPositionPage({super.key});
  static String id = 'selectPositionPage';

  @override
  State<SelectPositionPage> createState() => _SelectPositionPageState();
}

class _SelectPositionPageState extends State<SelectPositionPage> {
  int selectedButton = 0;

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Choices(
                  onTap: () {
                    setState(() {
                      selectedButton = 1;
                    });
                  },
                  color: selectedButton == 1 ? kColor : Colors.black,
                  text: 'student',
                  fontWeight:
                      selectedButton == 1 ? FontWeight.w700 : FontWeight.w500,
                  imagePath: 'assets/icons_svg/junior.svg',
                  backgroundColor: selectedButton == 1
                      ? const Color(0xffE6EAFA)
                      : Colors.white,
                  textColor: selectedButton == 1
                      ? const Color(0xFF090F24)
                      : const Color(0xFF626262),
                ),
                Choices(
                  onTap: () {
                    setState(() {
                      selectedButton = 2;
                    });
                  },
                  color: selectedButton == 2 ? kColor : Colors.black,
                  backgroundColor: selectedButton == 2
                      ? const Color(0xffE6EAFA)
                      : Colors.white,
                  text: 'company',
                  fontWeight:
                      selectedButton == 2 ? FontWeight.w700 : FontWeight.w500,
                  textColor: selectedButton == 2
                      ? const Color(0xFF090F24)
                      : const Color(0xFF626262),
                  imagePath: 'assets/icons_svg/company.svg',
                ),
                Choices(
                  onTap: () {
                    setState(() {
                      selectedButton = 3;
                    });
                  },
                  color: selectedButton == 3 ? kColor : Colors.black,
                  backgroundColor: selectedButton == 3
                      ? const Color(0xffE6EAFA)
                      : Colors.white,
                  text: 'instructor',
                  fontWeight:
                      selectedButton == 3 ? FontWeight.w700 : FontWeight.w500,
                  textColor: selectedButton == 3
                      ? const Color(0xFF090F24)
                      : const Color(0xFF626262),
                  imagePath: 'assets/icons_svg/inst.svg',
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
                switch (selectedButton) {
                  case 1:
                    Navigator.pushNamed(context, JuniorInfoPage1.id);
                    break;
                  case 2:
                    Navigator.pushNamed(context, StartUpInfoPage.id);
                    break;
                  case 3:
                    Navigator.pushNamed(context, InstructorInfoPage1.id);
                    break;
                  default:
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please choose a position'),
                      ),
                    );
                }
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

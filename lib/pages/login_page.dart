import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/sign_up_page.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:jobee/widgets/custom_button.dart';
import 'package:jobee/widgets/custom_check_box.dart';
import 'package:jobee/widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/login_option.dart';
import 'package:jobee/widgets/new_registeration.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.1,
            ),
            Center(
              child: SizedBox(
                width: screenSize.width * 0.8,
                child: logo,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.08,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
                  child: Text(
                    'Log in now',
                    style: TextStyle(
                      color: const Color(0xFF090F24),
                      fontSize: screenSize.width * 0.07,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0.05,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            CustomTextFormField(
              labelText: 'Email',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/email.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            CustomTextFormField(
              labelText: 'Password',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/lock.svg',
                fit: BoxFit.none,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomCheckBox(),
                      Text(
                        'Remember Password',
                        style: TextStyle(
                          color: const Color(0xFF313131),
                          fontSize: screenSize.width * 0.03,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: const Color(0xFF313131),
                      fontSize: screenSize.width * 0.025,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                onTap: () => Navigator.pushNamed(context, BottomNavBar.id),
                text: 'Log in',
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: screenSize.width * 0.03,
                    endIndent: screenSize.width * 0.015,
                    thickness: 0.7,
                    color: const Color(0xFF848484),
                  ),
                ),
                Text(
                  'Or login with',
                  style: TextStyle(
                    color: const Color(0xFF848484),
                    fontSize: screenSize.width * 0.0375,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    endIndent: screenSize.width * 0.03,
                    indent: screenSize.width * 0.015,
                    color: const Color(0xFF848484),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            const LoginOptions(
              imagePath: 'assets/login_options_images/google.jpg',
              text: 'Log in using Google',
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            const LoginOptions(
              imagePath: 'assets/login_options_images/Apple.jpg',
              text: 'Log in using Apple',
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            NewRegistration(
              onTap: () {
                Navigator.pushNamed(context, SignUpPage.id);
              },
              question: 'Don\'t have an account? ',
              solution: 'New registration',
            )
          ],
        ),
      ),
    );
  }
}

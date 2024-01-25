import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/pages/sign_up_page.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
            Center(
              child: logo,
            ),
            const SizedBox(
              height: 60,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Log in now',
                    style: TextStyle(
                      color: Color(0xFF090F24),
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0.05,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              labelText: 'User Name',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/user.svg',
                fit: BoxFit.none,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              labelText: 'Password',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/lock.svg',
                fit: BoxFit.none,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomCheckBox(),
                      Text(
                        'Remember Password',
                        style: TextStyle(
                          color: Color(0xFF313131),
                          fontSize: 12,
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
                      color: Color(0xFF313131),
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                onTap: () =>
                    Navigator.pushNamed(context, selectPositionPage.id),
                text: 'Log in',
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 20,
                    endIndent: 10,
                    thickness: .7,
                    color: Color(0xFF848484),
                  ),
                ),
                Text(
                  'Or login with',
                  style: TextStyle(
                    color: Color(0xFF848484),
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: .7,
                    endIndent: 20,
                    indent: 10,
                    color: Color(0xFF848484),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const LoginOptions(
              imagePath: 'assets/login_options_images/google.jpg',
              text: 'Log in using Google',
            ),
            const SizedBox(
              height: 16,
            ),
            const LoginOptions(
              imagePath: 'assets/login_options_images/Apple.jpg',
              text: 'Log in using Apple',
            ),
            const SizedBox(
              height: 65,
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

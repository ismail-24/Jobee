import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/widgets/custom_button.dart';
import 'package:jobee/widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/new_registeration.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static String id = 'SignUpPage';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Center(
              child: logo,
            ),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Text(
                    'Sign up now',
                    style: TextStyle(
                      color: Color(0xFF090F24),
                      fontSize: screenWidth * 0.06,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0.05,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            CustomTextFormField(
              labelText: 'User Name',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/user.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextFormField(
              labelText: 'E-mail',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/email.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextFormField(
              labelText: 'Password',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/lock.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            CustomTextFormField(
              labelText: 'Confirm Password',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/lock.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                onTap: () =>
                    Navigator.pushNamed(context, selectPositionPage.id),
                text: 'Sign Up',
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            NewRegistration(
              onTap: () {
                Navigator.pop(context);
              },
              question: 'Already have an account? ',
              solution: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}

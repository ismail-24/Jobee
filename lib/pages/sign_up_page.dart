import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/login_page.dart';
import 'package:jobee/widgets/custom_button.dart';
import 'package:jobee/widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/new_registeration.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static String id = 'SignUpPage';

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
                    'Sign up now',
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
              labelText: 'E-mail',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/email.svg',
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
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              labelText: 'Confirm Password',
              prefixIcon: SvgPicture.asset(
                'assets/icons_svg/lock.svg',
                fit: BoxFit.none,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: CustomButton(
                onTap: () => Navigator.pushNamed(context, LogInPage.id),
                text: 'Sign Up',
                color: kColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            NewRegistration(
              onTap: () {
                Navigator.pushNamed(context, LogInPage.id);
              },
              question: 'have an account already? ',
              solution: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}

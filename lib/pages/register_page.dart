import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/cubits/register_cubit/register_cubit.dart';
import 'package:jobee/helper/show_snack_bar.dart';
import 'package:jobee/pages/select_position_page.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/new_registeration.dart';

class RegisterPage extends StatelessWidget {
  static String id = 'RegisterPage';
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccess) {
          Navigator.pushNamed(context, SelectPositionPage.id);
          isLoading = false;
        } else if (state is RegisterFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: formKey,
            child: SingleChildScrollView(
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
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04),
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
                    validator: (data) {
                      if (data == null || data.isEmpty) {
                        return 'This Filed Is Required';
                      }
                    },
                    onChange: (data) {
                      email = data;
                    },
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
                    validator: (data) {
                      if (data == null || data.isEmpty) {
                        return 'This Filed Is Required';
                      }
                    },
                    onChange: (data) {
                      password = data;
                    },
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
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<RegisterCubit>(context)
                              .registerUser(email: email!, password: password!);
                        } else {}
                      },
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
          ),
        );
      },
    );
  }
}

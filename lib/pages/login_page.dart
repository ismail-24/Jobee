import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/cubits/chat_cubit/chat_cubit.dart';
import 'package:jobee/cubits/login_cubit/login_cubit.dart';
import 'package:jobee/helper/show_snack_bar.dart';
import 'package:jobee/pages/register_pages/register_page.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_check_box.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:jobee/widgets/login_option.dart';
import 'package:jobee/widgets/new_registeration.dart';

class LogInPage extends StatelessWidget {
  static String id = 'LoginPage';
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  String? email, password;

  LogInPage({super.key});
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          BlocProvider.of<ChatCubit>(context).getMessages();
          Navigator.pushNamed(context, BottomNavBar.id, arguments: email);
          isLoading = false;
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          progressIndicator: const CircularProgressIndicator(
            color: kColor,
          ),
          inAsyncCall: isLoading,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: formKey,
              child: SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.04),
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
                      validator: (data) {
                        if (data == null || data.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onChange: (data) {
                        email = data;
                      },
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
                      obscureText:
                          BlocProvider.of<LoginCubit>(context).obscureTxt,
                      validator: (data) {
                        if (data == null || data.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onChange: (data) {
                        password = data;
                      },
                      labelText: 'Password',
                      prefixIcon: SvgPicture.asset(
                        'assets/icons_svg/lock.svg',
                        fit: BoxFit.none,
                      ),
                      suffix: GestureDetector(
                        child: SvgPicture.asset(
                          BlocProvider.of<LoginCubit>(context).obscureTxt ==
                                  true
                              ? 'assets/icons_svg/eye-slash.svg'
                              : 'assets/icons_svg/eye.svg',
                          fit: BoxFit.none,
                        ),
                        onTap: () {
                          BlocProvider.of<LoginCubit>(context).obscureText();
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.04),
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
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<LoginCubit>(context)
                                .loginUser(email: email!, password: password!);
                          } else {}
                        },
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
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      question: 'Don\'t have an account? ',
                      solution: 'New registration',
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

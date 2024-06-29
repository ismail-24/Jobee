import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/pages/register_pages/junior_info/junior_info_page2.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';

class JuniorInfoPage1 extends StatelessWidget {
  JuniorInfoPage1({super.key});
  static String id = 'JuniorInfo';
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 65,
              ),
              logo,
              const SizedBox(
                height: 48,
              ),
              const Text(
                'Junior / Student Data',
                style: TextStyle(
                  color: Color(0xFF090F24),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.07,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                'Please enter this following data',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0.21,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                validator: (data) {
                  if (data == null || data.isEmpty) {
                    return 'This Field is Required';
                  }
                },
                labelText: 'Name',
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                validator: (data) {
                  if (data == null || data.isEmpty) {
                    return 'This Field is Required';
                  }
                },
                labelText: 'Age',
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                validator: (data) {
                  if (data == null || data.isEmpty) {
                    return 'This Field is Required';
                  }
                },
                labelText: 'Track',
                suffix: DropdownButton(
                  icon: SvgPicture.asset('assets/icons_svg/arrow_drop.svg'),
                  items: <String>[
                    'UI/UX',
                    'Frontend',
                    'Backend',
                    'Flutter',
                    'Android',
                    'IOS',
                    'DevOps'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                validator: (data) {
                  if (data == null || data.isEmpty) {
                    return 'This Field is Required';
                  }
                },
                labelText: 'Track Level',
                suffix: DropdownButton(
                  icon: SvgPicture.asset('assets/icons_svg/arrow_drop.svg'),
                  items: <String>['Beginner', 'Intermediate', 'Advanced']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: double.infinity,
                child: CustomButton(
                  text: 'Next Step',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, JuniorInfoPage2.id);
                    } else {}
                  },
                  color: kColor,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  color: Colors.white,
                  textColor: kColor,
                  text: 'Back',
                  elevation: 0,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

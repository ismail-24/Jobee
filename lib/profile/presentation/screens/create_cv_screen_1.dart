import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_check_box.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';

import '../../../constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import '../../profile.dart';

class CreateCV1Screen extends StatelessWidget {
  const CreateCV1Screen({super.key});

  static const String id = 'CreateCV1Screen';
  void dropdowncallback(String? selectedvalue) {
    if (selectedvalue is String) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: 'My CV'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // const Expanded(child: SizedBox()),
              Center(
                child: Text(
                  'Please Inform The Data ',
                  style: TextStyle(
                      fontSize: 16,
                      height: 2,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000000)),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              CustomTextFormField(
                labelText: "name",
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "phone",
                keyboardType: TextInputType.phone,
              ),

              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "E-mail",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),

              //   CustomTextFormField(
              //  labelText: "Location",
              //   ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: Text("Location"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xffBDBDBD),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: kColor),
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(
                        child: Text('Tanta'),
                        value: 'Tanta',
                      ),
                      DropdownMenuItem(
                        child: Text('Mansoura'),
                        value: 'Mansoura',
                      ),
                      DropdownMenuItem(
                        child: Text('Cairo'),
                        value: 'Cairo',
                      ),
                      // DropdownMenuItem(child: Text('Backend'),value: 'Backend',),
                    ],
                    onChanged: dropdowncallback),
              ),

              Row(
                children: [
                  CustomCheckBox(),
                  Text('Auto Fill Data'),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              CustomButton(
                onTap: () => Navigator.pushNamed(context, CreateCV2Screen.id),
                text: 'Continue',
                color: const Color.fromRGBO(7, 42, 200, 1),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/widgets/custom_widgets/custom_check_box.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';

import '../../../constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import '../../../core/widgets/my_app_bar.dart';
import '../../profile.dart';

class CreateCV2Screen extends StatelessWidget {
  const CreateCV2Screen({super.key});
  static const String id = 'CreateCV2Screen';
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
                  'Small Steps For Your Proffisional Cv',
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
                labelText: "Age",
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: Text("Track"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xffBDBDBD),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: kColor),
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(
                        child: Text('UI UX'),
                        value: 'UIUX',
                      ),
                      DropdownMenuItem(
                        child: Text('Flutter'),
                        value: 'Flutter',
                      ),
                      DropdownMenuItem(
                        child: Text('Frontend'),
                        value: 'Frontend',
                      ),
                      DropdownMenuItem(
                        child: Text('Backend'),
                        value: 'Backend',
                      ),
                    ],
                    onChanged: dropdowncallback),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "Experience  Years",
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 30,
              ),
              // CustomTextFormField(
              //  maxLines: 5,
              //  labelText: "Skills",

              //  ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    //label: Text('Skills'),
                    labelText: 'Skills',
                    hintText: "Soft Communication Skills - Team Work - Fast"
                        "\n Learning - Problem Solving - Self Awarness",

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
                ),
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
                onTap: () => Navigator.pushNamed(context, CreateCV3Screen.id),
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

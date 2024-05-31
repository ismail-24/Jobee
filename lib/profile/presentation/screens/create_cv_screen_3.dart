import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_check_box.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';

import '../../../constant.dart';

import '../../profile.dart';

class CreateCV3Screen extends StatelessWidget {
  const CreateCV3Screen({super.key});
  static const String id = 'CreateCV3Screen';
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
              const Center(
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
              const SizedBox(
                height: 10,
              ),

              CustomTextFormField(
                labelText: "name",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "phone",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "E-mail",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 30,
              ),

              //   CustomTextFormField(
              //  labelText: "Location",
              //   ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: const Text("Location"),
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
                        value: 'Tanta',
                        child: Text('Tanta'),
                      ),
                      DropdownMenuItem(
                        value: 'Mansoura',
                        child: Text('Mansoura'),
                      ),
                      DropdownMenuItem(
                        value: 'Cairo',
                        child: Text('Cairo'),
                      ),
                      // DropdownMenuItem(child: Text('Backend'),value: 'Backend',),
                    ],
                    onChanged: dropdowncallback),
              ),

              const Row(
                children: [
                  CustomCheckBox(),
                  Text('Auto Fill Data'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              CustomButton(
                onTap: () => Navigator.pushNamed(context, CreateCV4Screen.id),
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

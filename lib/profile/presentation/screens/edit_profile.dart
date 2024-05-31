import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/profile/profile.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';
import 'package:jobee/widgets/custom_widgets/custom_text_form_field.dart';
import '../../../constant.dart';
import '../../../core/widgets/my_app_bar.dart';
import 'package:jobee/core/core.dart';

class EditProfile extends StatelessWidget {
  static const String id = 'EditProfile ';
  void dropdowncallback(String? selectedvalue) {
    if (selectedvalue is String) {}
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: myAppBar(context: context, title: 'EditProfile'),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            //border: Border.all(color: Colors.redAccent),
                            //TODO add image
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/face1.jpeg',
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, EditProfile.id),
                              child: CircleAvatar(
                                child: SvgPicture.asset(
                                    'assets/icons_svg/edit.svg'),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                labelText: "name",
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: "Age",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: const Text("Track"),
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
              // SizedBox(height:16 ,),

              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: const Text("Track Level"),
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
                        child: Text('Fresh'),
                        value: 'Fresh',
                      ),
                      DropdownMenuItem(
                        child: Text('Junior'),
                        value: 'Junior',
                      ),
                      DropdownMenuItem(
                        child: Text('Middle'),
                        value: 'Middle',
                      ),
                      DropdownMenuItem(
                        child: Text('Senior'),
                        value: 'Senior',
                      ),
                    ],
                    onChanged: dropdowncallback),
              ),
              const SizedBox(
                height: 16,
              ),

              CustomTextFormField(
                labelText: "Experience  Years",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: const Text("Military status"),
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
                        child: Text('Non'),
                        value: 'Non',
                      ),
                      DropdownMenuItem(
                        child: Text('Exempt'),
                        value: 'Exempt',
                      ),
                      DropdownMenuItem(
                        child: Text('Delayed'),
                        value: 'Delayed',
                      ),
                      DropdownMenuItem(
                        child: Text('He terminated the service'),
                        value: 'He terminated the service',
                      ),
                    ],
                    onChanged: dropdowncallback),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    //label: Text('Skills'),
                    labelText: 'About you',
                    hintText:
                        "Hi Iam Abdallah Ui Ux designer ,I specialize in creating\n"
                        " visually appealing and user centered designs that optimize\n"
                        " the user experiences, drive engagement and \n"
                        "achieve business ",

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

              CustomButton(
                onTap: () => Navigator.pushNamed(context, CreateCV4Screen.id),
                text: 'Save',
                color: const Color.fromRGBO(7, 42, 200, 1),
                textColor: Colors.white,
              ),
            ]),
      ),
    );
  }
}

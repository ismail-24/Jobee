import 'package:flutter/material.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

import '../../profile.dart';

class CreateCVScreen extends StatelessWidget {
  const CreateCVScreen({super.key});
  static const String id = 'CreateCVScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: 'Create CV'),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 25),
            Center(
                child: Text(
              'Lets Create Your Cv Supported By Ai ',
              style: TextStyle(
                  fontSize: 16,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
            )),
            SizedBox(height: 7),
            Center(
              child: Text(
                'Please Inform The Following Data  ',
                style: TextStyle(
                  color: Color(0xFF848484),
                  fontSize: 12,
                  height: 2,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Image.asset(AssetsPath.createCVAnimation),
            SizedBox(height: 50),
            CustomButton(
              onTap: () => Navigator.pushNamed(context, CreateCV1Screen.id),
              text: 'Create Cv',
              color: Color.fromRGBO(7, 42, 200, 1),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

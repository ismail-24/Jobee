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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Create CV',
            style: TextStyle(
              fontSize: 20,
              height: 2,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
              color: Color(0xFF000000),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 25),
            const Center(
              child: Text(
                'Lets Create Your Cv Supported By Ai ',
                style: TextStyle(
                  fontSize: 16,
                  height: 2,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Center(
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
            const SizedBox(height: 50),
            CustomButton(
              onTap: () => Navigator.pushNamed(context, CreateCV1Screen.id),
              text: 'Create Cv',
              color: const Color.fromRGBO(7, 42, 200, 1),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/core/core.dart';
import 'package:jobee/core/widgets/my_app_bar.dart';
import 'package:jobee/widgets/bottom_nav_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

class CreateCV5Screen extends StatelessWidget {
  const CreateCV5Screen({super.key});
  static const String id = 'CreateCV5Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: 'My CV'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //const Expanded(child: SizedBox()),
            Center(
              child: Text(
                'Congratulations Your Cv is Done ',
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

            Image.asset(
              AssetsPath.finalcv,
              // height:700,width:200
            ),
            SizedBox(
              height: 150,
            ),

            CustomButton(
              onTap: () {
                // Navigator.pushNamed(context, routeName);
              },
              text: 'Continue',
              color: const Color.fromRGBO(7, 42, 200, 1),
              textColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              onTap: () {
                Navigator.pushNamed(context, BottomNavBar.id);
              },
              text: 'Download',
              color: Colors.white,
              textColor: kColor,
            ),
          ],
        ),
      ),
    );
  }
}

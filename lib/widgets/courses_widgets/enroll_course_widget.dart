import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';
import 'package:jobee/widgets/custom_widgets/custom_button.dart';

class EnrollCourseWidget extends StatelessWidget {
  const EnrollCourseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  color: Color(0xFF848484),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '\$250.00',
                style: TextStyle(
                  color: Color(0xFF072AC8),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 230,
          height: 50,
          child: CustomButton(
            onTap: () {},
            text: 'Enroll Now',
            color: kColor,
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}

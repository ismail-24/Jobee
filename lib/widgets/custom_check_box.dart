import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .7,
      child: Checkbox(
        value: checkBoxValue,
        onChanged: (value) {
          setState(() {
            checkBoxValue = value!;
          });
        },
        activeColor: kColor,
        side: BorderSide(
          color: Color(0xff9D9FA0),
          width: 2,
        ),
      ),
    );
  }
}

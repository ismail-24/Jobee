import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
    required this.color,
    required this.textColor,
    this.elevation,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;
  final Color color;
  final Color textColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        onPressed: onTap,
        color: color,
        textColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          // ignore: prefer_const_constructors
          side: BorderSide(
            color: kColor,
            width: .8,
          ),
        ),
        elevation: elevation ?? 3,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        height: 63,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.onChange,
    super.key,
    this.labelText,
    this.prefixIcon,
    this.suffix,
    this.height,
    this.validator,
    this.obscureText = false,
  });
  final Function(String)? onChange;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffix;
  final double? height;
  String? Function(String?)? validator;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: height ?? 65,
        child: TextFormField(
          obscureText: obscureText!,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: kColor,
          onChanged: onChange,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black),
            hintText: labelText,
            hintStyle: const TextStyle(
              color: Color(0xB2848484),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
            focusColor: kColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffix,
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
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}

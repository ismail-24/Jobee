import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadCv extends StatelessWidget {
  const UploadCv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DottedBorder(
        color: const Color(0xFFBDBDBD),
        strokeWidth: 1,
        borderType: BorderType.RRect,
        dashPattern: [17, 16],
        radius: const Radius.circular(10),
        child: Container(
          height: 68,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 7,
                  blurRadius: 19 // changes position of shadow
                  ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons_svg/folder-add.svg'),
              SizedBox(
                width: 8,
              ),
              const Text(
                'Upload your cv/resume',
                style: TextStyle(
                  color: Color(0xB2848484),
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0.30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
    required this.upTitle,
    required this.bottomTitle,
  });
  final String upTitle, bottomTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 70,
      decoration: ShapeDecoration(
        color: Color(0x0A072AC8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            upTitle,
            style: const TextStyle(
              color: Color(0xFF090F24),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            bottomTitle,
            style: const TextStyle(
              color: Color(0xFF072AC8),
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

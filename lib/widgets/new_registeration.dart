import 'package:flutter/material.dart';

class NewRegistration extends StatelessWidget {
  const NewRegistration({
    super.key,
    required this.question,
    required this.solution,
    this.onTap,
  });
  final String question;
  final String solution;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: const TextStyle(
            color: Color(0xFF626262),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            solution,
            style: const TextStyle(
              color: Color(0xFF072AC8),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}

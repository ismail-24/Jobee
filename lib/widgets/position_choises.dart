import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choices extends StatefulWidget {
  const Choices({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
    required this.color,
    required this.backgroundColor,
    required this.textColor,
    required this.fontWeight,
  });
  final String imagePath;
  final String text;
  final void Function()? onTap;
  final Color color;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight? fontWeight;
  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  int selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              color: widget.backgroundColor,
              shape: const OvalBorder(),
              shadows: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 5,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                widget.imagePath,
                color: widget.color,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: widget.textColor
              // ? const Color(0xFF090F24)
              // : const Color(0xFF626262),
              ,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: widget.fontWeight,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

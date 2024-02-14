import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class choises extends StatefulWidget {
  const choises({
    super.key,
    required this.imagePath,
    required this.text,
  });
  final String imagePath;
  final String text;

  @override
  State<choises> createState() => _choisesState();
}

class _choisesState extends State<choises> {
  String selectedChoice = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              color: selectedChoice == widget.text
                  ? const Color(0xffE6EAFA)
                  : Colors.white,
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
                color: selectedChoice == widget.text
                    ? const Color(0xff072AC8)
                    : const Color(0xff848484),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: selectedChoice == widget.text
                  ? const Color(0xFF090F24)
                  : const Color(0xFF626262),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: selectedChoice == widget.text
                  ? FontWeight.w700
                  : FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

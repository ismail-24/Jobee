import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    required this.title,
    this.onTap,
    required this.imagePAth,
  });
  final String title, imagePAth;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        onTap: onTap,
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            margin: const EdgeInsets.all(4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 246, 255, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(
              imagePAth,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF090F24),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF090F24),
          size: 20,
        ),
      ),
    );
  }
}

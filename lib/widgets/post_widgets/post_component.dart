import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostComponent extends StatelessWidget {
  const PostComponent(
      {super.key,
      required this.assetPath,
      required this.title,
      required this.numberOfComments});

  final String assetPath, title, numberOfComments;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF090F24),
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SvgPicture.asset(assetPath),
              const SizedBox(
                width: 5,
              ),
              Text(
                numberOfComments,
                style: const TextStyle(
                  color: Color(0xFF090F24),
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

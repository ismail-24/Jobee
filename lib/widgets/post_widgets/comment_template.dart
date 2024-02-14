import 'package:flutter/material.dart';

class CommentTemplate extends StatelessWidget {
  const CommentTemplate({super.key, required this.comment});
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 51,
      color: Colors.white,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: Image(
                image: AssetImage('assets/icons_svg/post_icons/Avatar.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Yahia ahmed',
                  style: TextStyle(
                    color: Color(0xFF090F24),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  comment,
                  style: const TextStyle(
                    color: Color(0xFF090F24),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

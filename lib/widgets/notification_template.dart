import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class NotificationTemplate extends StatelessWidget {
  const NotificationTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    return Container(
      height: 68,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: ShapeDecoration(
        color: const Color(0x33E6EAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: kColor,
              child: Image.asset(
                'assets/icons_svg/post_icons/Avatar.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'Yahia Ahmed',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(' reacted to your comment: ')
                  ],
                ),
                const Text(' “create html file”.'),
                Text(
                  'Today at ${date.hour}:${date.minute} pm',
                  style: const TextStyle(
                    color: Color(0xFF848484),
                    fontSize: 10,
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

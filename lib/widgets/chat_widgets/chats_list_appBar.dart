import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/pages/chats_list_page.dart';
import 'package:jobee/pages/notifications_page.dart';

class ChatsListAppBar extends StatelessWidget {
  const ChatsListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset('assets/icons_svg/create_post_icons/back.png')),
        const SizedBox(),
        const Text(
          'Chat',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, NotificationPage.id),
                child: SvgPicture.asset(
                    'assets/icons_svg/home_icons/notification.svg')),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                'assets/icons_svg/home_icons/community.svg',
                color: const Color(0xff848484),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () => Navigator.of(context, rootNavigator: true).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ChatsListPage(),
                      ),
                    ),
                child: SvgPicture.asset(
                    'assets/icons_svg/home_icons/message.svg')),
          ],
        ),
      ],
    );
  }
}

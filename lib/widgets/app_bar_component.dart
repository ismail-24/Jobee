import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/pages/chats_list_page.dart';
import 'package:jobee/pages/community_page.dart';
import 'package:jobee/pages/notifications_page.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons_svg/home_icons/logo.png'),
        const SizedBox(
          width: 170,
        ),
        GestureDetector(
            onTap: () => Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                ),
            child: SvgPicture.asset(
                'assets/icons_svg/home_icons/notification.svg')),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, CommunityPage.id),
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
                  MaterialPageRoute(
                    builder: (context) => ChatsListPage(),
                  ),
                ),
            child: SvgPicture.asset('assets/icons_svg/home_icons/message.svg')),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobee/pages/chat_pages/chats_list_page.dart';
import 'package:jobee/pages/notifications_page.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Image.asset('assets/icons_svg/home_icons/logo.png'),
        SizedBox(
          width: screenWidth * 0.413194,
        ),
        GestureDetector(
            onTap: () => Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                ),
            child: SvgPicture.asset(
                'assets/icons_svg/home_icons/notification.svg')),
        SizedBox(
          width: screenWidth * .02430555556,
        ),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/icons_svg/home_icons/community.svg',
          ),
        ),
        SizedBox(
          width: screenWidth * .02430555556,
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

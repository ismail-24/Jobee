import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobee/pages/chat_pages/chat_page.dart';
import 'package:jobee/pages/login_page.dart';

class ChatTile extends StatelessWidget {
  ChatTile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ChatPage.id,
                arguments: 'ismail2@gmail.com');
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 24,
              child: Image.asset(
                'assets/icons_svg/post_icons/Avatar.png',
              ),
            ),
            trailing: const Text('Now'),
            title: const Text(
              'yahia ahmed',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff090F24),
              ),
            ),
            subtitle: const Text(
              'This text is an example of text that can be re ',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xff626262),
                overflow: TextOverflow.ellipsis,
                height: 3,
              ),
            ),
          ),
        ),
        Divider(
          thickness: .2,
          color: Color(0xffBDBDBD),
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}

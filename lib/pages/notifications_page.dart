import 'package:flutter/material.dart';
import 'package:jobee/widgets/notification_template.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  static String id = '/NotificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset('assets/icons_svg/create_post_icons/back.png'),
        ),
        title: const Center(
          child: Text(
            'Notifications',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          DateTime now = DateTime.now();
          return NotificationTemplate();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobee/constant.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        Text('About'),
        Text('Lessons'),
        Text('Certificate'),
        Text('Reviews'),
      ],
      indicatorColor: kColor,
      labelColor: kColor,
      indicatorWeight: 2,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(
        fontSize: 14,
        fontFamily: 'Montserrat',
      ),
      labelPadding: EdgeInsets.only(bottom: 12),
    );
  }
}

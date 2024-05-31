import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

PreferredSizeWidget myAppBar(
        {required BuildContext context, required String title}) =>
    AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset('assets/icons_svg/create_post_icons/back.png')),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );

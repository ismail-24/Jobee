import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/constant.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      margin: const EdgeInsets.only(bottom: 24),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffBDBDBD),
              width: 0.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kColor,
              width: 0.5,
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12,
              fontWeight: FontWeight.w400),
          prefixIcon: SvgPicture.asset(
            'assets/icons_svg/search.svg',
            fit: BoxFit.none,
          ),
        ),
      ),
    );
  }
}

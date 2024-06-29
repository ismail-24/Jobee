import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/constant.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.053,
      margin: EdgeInsets.only(bottom: screenHeight * 0.029),
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

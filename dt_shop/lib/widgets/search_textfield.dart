import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: ColorUtils.hinttextColor.withOpacity(.4),
                  blurRadius: 5,
                  spreadRadius: 0)
            ]),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: SvgPicture.asset('assets/images/search.svg')),
              border: InputBorder.none,
              hintText: 'Search the latest trends...',
              hintStyle: hintTextStyle.copyWith(
                  color: ColorUtils.hinttextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600)),
        ));
  }
}

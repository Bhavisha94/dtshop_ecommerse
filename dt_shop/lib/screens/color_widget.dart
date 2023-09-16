// ignore_for_file: must_be_immutable

import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  double? width;
  String? text;
  int? index;
  VoidCallback? onTap;
  ColorWidget({super.key, this.width, this.text, this.index, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * .035,
        width: width,
        decoration:
            BoxDecoration(border: Border.all(color: ColorUtils.grayShadeD9)),
        child: Center(
          child: Text(
            text.toString(),
            style:
                textstyle.copyWith(color: ColorUtils.grayShadeD9, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

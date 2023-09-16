import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final double width;
  final double height;
  final double borderRadius;
  final double? fontSize;
  const Button(
      {super.key,
      required this.text,
      this.onTap,
      required this.width,
      required this.height,
      required this.borderRadius,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: ColorUtils.blueHintText,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: Text(
            text,
            style: textstyle.copyWith(
                color: ColorUtils.white,
                fontWeight: FontWeight.w600,
                fontSize: fontSize ?? 20),
          ),
        ),
      ),
    );
  }
}

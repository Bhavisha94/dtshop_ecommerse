import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class Submit extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const Submit({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 145,
        height: 40,
        color: ColorUtils.blueHintText,
        child: Center(
          child: Text(
            text,
            style: textstyle.copyWith(
                color: ColorUtils.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obsecure;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final Widget? suffixIcon;
  final BoxConstraints? iconSize;
  const TextFieldWidget(
      {super.key,
      required this.obsecure,
      this.hintText,
      this.hintTextStyle,
      this.suffixIcon,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          suffixIcon: suffixIcon,
          isDense: true,
          suffixIconConstraints: iconSize,
          contentPadding: const EdgeInsets.only(bottom: 5),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorUtils.grayShade83)),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorUtils.grayShade83))),
    );
  }
}

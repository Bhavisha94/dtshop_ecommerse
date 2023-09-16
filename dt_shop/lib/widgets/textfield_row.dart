import 'package:dt_shop/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dt_shop/utils/style.dart';

class TextFieldRowWidget extends StatelessWidget {
  final bool obsecure;
  final String? hintText;
  final Widget? suffixIcon;
  final String? icon;
  final BoxConstraints? iconSize;
  const TextFieldRowWidget(
      {super.key,
      this.icon,
      required this.obsecure,
      this.hintText,
      this.suffixIcon,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(icon.toString()),
        SizedBox(
            width: MediaQuery.of(context).size.width * .82,
            child: TextFieldWidget(
              obsecure: obsecure,
              hintText: hintText,
              hintTextStyle: hintTextStyle,
              suffixIcon: suffixIcon,
              iconSize: iconSize,
            ))
      ],
    );
  }
}

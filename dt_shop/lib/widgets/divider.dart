import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      decoration: const BoxDecoration(
        color: ColorUtils.grayShadeD9,
        boxShadow: [
          BoxShadow(
              color: ColorUtils.grayShadeD9, blurRadius: 5, spreadRadius: 1)
        ],
      ),
    );
  }
}

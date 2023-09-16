import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageSkip extends StatelessWidget {
  final PageController controller;
  const PageSkip({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => controller.previousPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn),
          child: SvgPicture.asset('assets/images/back.svg'),
        ),
        Text(
          'Skip',
          style: textstyle.copyWith(
              color: ColorUtils.grayShade80,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        )
      ],
    );
  }
}

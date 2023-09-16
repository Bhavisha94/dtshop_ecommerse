import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class SelectSizeWidget extends StatelessWidget {
  final int index;
  final String size;
  final double fontSize;
  final VoidCallback? onTap;
  final int selectedSize;
  const SelectSizeWidget(
      {super.key,
      required this.index,
      required this.size,
      required this.fontSize,
      this.onTap,
      required this.selectedSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
              color: index == selectedSize
                  ? const Color(0xffFC5F2D)
                  : const Color(0xffB5B5B5)),
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xffCBCBCB).withOpacity(.1),
        ),
        child: Center(
          child: Text(
            size,
            style: textstyle.copyWith(
                color: index == selectedSize
                    ? const Color(0xffFC5F2D)
                    : const Color(0xffB5B5B5),
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

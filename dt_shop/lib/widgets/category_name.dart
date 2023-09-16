import 'package:dt_shop/cubit/category/cubit/category_item_cubit.dart';
import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryName extends StatefulWidget {
  final int index;
  final double width;
  final String text;
  final VoidCallback? onTap;

  const CategoryName(
      {super.key,
      required this.index,
      required this.width,
      required this.text,
      this.onTap});

  @override
  State<CategoryName> createState() => _CategoryNameState();
}

class _CategoryNameState extends State<CategoryName> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryItemCubit, CategoryItemState>(
      listener: (context, state) {
        if (state is CategoryItemSelectedIndex) {
          index = state.index;
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: widget.onTap,
          child: Container(
            width: widget.width,
            height: 26,
            decoration: BoxDecoration(
              color: index == widget.index
                  ? const Color(0xff74A0FF)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(3),
              border: index == widget.index
                  ? null
                  : Border.all(color: ColorUtils.grayShadeD9),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: textstyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: index == widget.index
                        ? ColorUtils.white
                        : ColorUtils.grayShadeD9),
              ),
            ),
          ),
        );
      },
    );
  }
}

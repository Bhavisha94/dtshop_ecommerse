// ignore_for_file: deprecated_member_use, must_be_immutable
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dt_shop/cubit/bottom_item/cubit/bottom_bar_item_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBaarWidget extends StatelessWidget {
  int? selectedIndex;
  BottomBaarWidget({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomBarItemCubit, BottomBarItemState>(
      listener: (context, state) {
        if (state is BottomBarItemIndex) {
          selectedIndex = state.index;
        }
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.height * .08,
          decoration: const BoxDecoration(
            color: ColorUtils.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xffAFC9FF), blurRadius: 10, spreadRadius: 0)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item(
                context: context,
                image: 'home',
                color: selectedIndex == 0 ? ColorUtils.blueHintText : null,
                onTap: () =>
                    context.read<BottomBarItemCubit>().selectedIndex(0),
              ),
              item(
                context: context,
                image: 'category',
                color: selectedIndex == 1 ? ColorUtils.blueHintText : null,
                onTap: () =>
                    context.read<BottomBarItemCubit>().selectedIndex(1),
              ),
              item(
                context: context,
                image: 'explore',
                onTap: () =>
                    context.read<BottomBarItemCubit>().selectedIndex(2),
              ),
              item(
                context: context,
                image: 'cart',
                color: selectedIndex == 3 ? ColorUtils.blueHintText : null,
                onTap: () =>
                    context.read<BottomBarItemCubit>().selectedIndex(3),
              ),
              item(
                context: context,
                image: 'profile',
                color: selectedIndex == 4 ? ColorUtils.blueHintText : null,
                onTap: () =>
                    context.read<BottomBarItemCubit>().selectedIndex(4),
              ),
            ],
          ),
        );
      },
    );
  }

  item(
      {required BuildContext context,
      required String image,
      Color? color,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .15,
        height: MediaQuery.of(context).size.height * .08,
        child: Center(
            child: SvgPicture.asset(
          'assets/images/$image.svg',
          color: color,
        )),
      ),
    );
  }
}

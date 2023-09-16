import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/back_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar {
  static appBar(String title) {
    return AppBar(
      backgroundColor: ColorUtils.bgColor,
      leading: const BackWidget(),
      titleSpacing: 0,
      leadingWidth: 40,
      title: Text(
        title,
        style: textstyle.copyWith(
            color: ColorUtils.blueHintText,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  static appbarPreferedSize(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * .07),
      child: SafeArea(
        child: Row(
          children: [
            const BackWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wishlist',
                  style: textstyle.copyWith(
                      color: ColorUtils.blueHintText,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '2 Items',
                  style: textstyle.copyWith(
                      fontSize: 12, color: const Color(0xff989898)),
                )
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: 35,
                    height: 35,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorUtils.grayShadeD9),
                    child: SvgPicture.asset(
                      'assets/images/pen.svg',
                    )),
              ],
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .02)
          ],
        ),
      ),
    );
  }
}

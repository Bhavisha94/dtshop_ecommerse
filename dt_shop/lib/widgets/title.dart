import 'package:dt_shop/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';

class TitleWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final bool showMoreIcon;
  const TitleWidget(
      {super.key, this.title, this.subTitle, required this.showMoreIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      color: ColorUtils.white,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.065,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                title.toString(),
                style: textstyle.copyWith(
                    color: ColorUtils.blueHintText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizeUtils.verticalSpacing(height: 3),
              Text(
                subTitle.toString(),
                style: textstyle.copyWith(
                    color: ColorUtils.gray3D,
                    fontSize: 13,
                    fontFamily: 'AbhayaLibre'),
              )
            ]),
          ),
          showMoreIcon
              ? Positioned(
                  right: 10,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: const Icon(
                      Icons.more_horiz_rounded,
                      color: ColorUtils.blueHintText,
                      size: 30,
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

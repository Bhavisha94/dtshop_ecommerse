import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuWidget extends StatelessWidget {
  final Widget? leadingIcon;
  final String? title;
  final String? subTitle;
  final bool isSubTitle;
  final bool isNext;
  final Color titleColor;
  final VoidCallback? onTap;
  const ProfileMenuWidget(
      {super.key,
      this.leadingIcon,
      this.title,
      this.subTitle,
      required this.isSubTitle,
      required this.isNext,
      required this.titleColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .08,
        child: Row(
          children: [
            leadingIcon!,
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.toString(),
                  style: textstyle.copyWith(color: titleColor, fontSize: 16),
                ),
                isSubTitle
                    ? Text(
                        subTitle.toString(),
                        style: textstyle.copyWith(
                            color: const Color(0xff898989), fontSize: 10),
                      )
                    : const SizedBox(),
              ],
            ),
            const Spacer(),
            isNext
                ? InkWell(
                    onTap: onTap,
                    child: SvgPicture.asset('assets/images/go.svg'))
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

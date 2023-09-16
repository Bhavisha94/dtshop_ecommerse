import 'package:dotted_border/dotted_border.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyPriceWidget extends StatelessWidget {
  const BuyPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.lightPurpleShade,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Buy for',
                      style: textstyle.copyWith(
                          fontSize: 14, color: ColorUtils.black),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .015),
                    Image.asset(
                      'assets/images/rs_small.png',
                      width: 7.41,
                      height: 10.51,
                      fit: BoxFit.fill,
                      color: ColorUtils.greenAccent,
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .005),
                    Text(
                      '500',
                      style: textstyle.copyWith(
                          color: ColorUtils.greenAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Save ',
                        style: textstyle.copyWith(
                            fontSize: 16, color: ColorUtils.shadeA7)),
                    Image.asset(
                      'assets/images/rs_small.png',
                      color: ColorUtils.shadeA7,
                      width: 7.41,
                      height: 10.52,
                      fit: BoxFit.fill,
                    ),
                    Text('300 on this order for today',
                        style: textstyle.copyWith(
                            fontSize: 14, color: ColorUtils.shadeA7))
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                DottedBorder(
                  dashPattern: const [8, 4],
                  strokeWidth: 2,
                  color: const Color(0xff2A6EF8),
                  child: Container(
                    height: 33,
                    width: 114,
                    color: const Color(0xffBFD4FF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'XLSWERV',
                          style: textstyle.copyWith(
                              color: const Color(0xff142F68)),
                        ),
                        SvgPicture.asset('assets/images/copy.svg')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Center(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Apply Code',
                style: textstyle.copyWith(
                    fontSize: 14, color: ColorUtils.blueHintText),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

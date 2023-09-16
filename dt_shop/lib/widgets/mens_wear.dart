import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MensFashionWidget extends StatelessWidget {
  const MensFashionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .07,
            color: ColorUtils.white,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    'Women Fashion',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(
                      color: ColorUtils.black,
                    ),
                  ),
                  Text(
                    'UP To 75%',
                    style: textstyle.copyWith(
                        color: ColorUtils.black, fontSize: 16),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz_rounded,
                    color: ColorUtils.blueHintText,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .01),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .3,
          color: ColorUtils.bodyBg,
          child: ListView.builder(
            itemCount: mensWear.length,
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 137,
                  height: MediaQuery.of(context).size.height * .29,
                  color: ColorUtils.cream,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 141,
                                  child: Image.asset(
                                    'assets/images/${mensWear[index].image}.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: CircleAvatar(
                                    radius: 11,
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: SvgPicture.asset(
                                          'assets/images/fill_heart.svg'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 0, left: 7, right: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mensWear[index].title.toString(),
                                  style: textstyle.copyWith(
                                      fontSize: 10, color: ColorUtils.gray3D),
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .004),
                                Text(
                                  mensWear[index].desc.toString(),
                                  style: textstyle.copyWith(
                                      color: ColorUtils.gray87, fontSize: 7),
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .004),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/rs.png',
                                      width: 7,
                                      height: 8,
                                    ),
                                    Text(
                                      mensWear[index].price.toString(),
                                      style: textstyle.copyWith(
                                          fontSize: 12,
                                          color: ColorUtils.blueHintText,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        left: MediaQuery.of(context).size.width * .014,
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * .355,
                            height: 4,
                            color: const Color(0xff4D5DF1),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: MediaQuery.of(context).size.width * .014,
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * .355,
                            height: 4,
                            color: const Color(0xff4DE7F1),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 5,
                        child: Center(
                          child: Container(
                            width: 4,
                            height: MediaQuery.of(context).size.width * .51,
                            color: const Color(0xff4DF15D),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: Center(
                          child: Container(
                            width: 4,
                            height: MediaQuery.of(context).size.width * .51,
                            color: const Color(0xffF14D92),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

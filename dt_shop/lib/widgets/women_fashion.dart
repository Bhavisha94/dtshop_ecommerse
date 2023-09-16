import 'package:dt_shop/screens/view_product.dart';
import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter_svg/svg.dart';

class WomenFashion extends StatelessWidget {
  const WomenFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewProduct(),
          )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  const VerticalDivider(
                    color: ColorUtils.black,
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
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .3,
            color: ColorUtils.bodyBg,
            child: ListView.builder(
              itemCount: fashionList.length,
              padding: const EdgeInsets.only(left: 15, top: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 137,
                        height: MediaQuery.of(context).size.height * .27,
                        color: ColorUtils.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 141,
                                    color: fashionList[index].color,
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/${fashionList[index].image}.png',
                                        width: fashionList[index].width,
                                        height: fashionList[index].height,
                                        fit: BoxFit.fill,
                                      ),
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
                              Text(
                                'Liano short dress',
                                style: textstyle.copyWith(
                                    fontSize: 10, color: ColorUtils.gray3D),
                              ),
                              SizeUtils.verticalSpacing(
                                  height: MediaQuery.of(context).size.height *
                                      .004),
                              Text(
                                'Women solid dress',
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
                                    '800',
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
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

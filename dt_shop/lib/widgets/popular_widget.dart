import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: 'Popular This Week',
          subTitle: 'This week more then 100 selling on this product',
          showMoreIcon: false,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .48,
          color: ColorUtils.bodyBg,
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: popularList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: .68,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                color: ColorUtils.white,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .17,
                          child: Center(
                            child: Image.asset(
                              'assets/images/${popularList[index].image}.png',
                              width: popularList[index].width,
                              height: popularList[index].height,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          popularList[index].name.toString(),
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 12,
                              color: ColorUtils.blueHintText),
                        ),
                        Text(
                          'Rs. ${popularList[index].price.toString()} Only',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre', fontSize: 14),
                        )
                      ],
                    ),
                    Positioned(
                        left: 3,
                        top: 3,
                        child: SvgPicture.asset(
                            'assets/images/top_left_corner.svg')),
                    Positioned(
                        right: 3,
                        top: 3,
                        child: SvgPicture.asset(
                            'assets/images/top_right_corner.svg')),
                    Positioned(
                        left: 3,
                        bottom: 3,
                        child: SvgPicture.asset(
                            'assets/images/bottom_left_corner.svg')),
                    Positioned(
                        bottom: 5,
                        right: 5,
                        child: SvgPicture.asset(
                            'assets/images/bottom_right-corner.svg')),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

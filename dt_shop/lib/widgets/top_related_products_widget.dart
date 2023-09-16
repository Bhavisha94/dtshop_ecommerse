import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/price_widget.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';

class TopRelatedProductsWidget extends StatelessWidget {
  const TopRelatedProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: 'Top Related Products',
          subTitle: 'This Month Top rated',
          showMoreIcon: true,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .32,
          color: ColorUtils.bodyBg,
          child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 15, top: 15),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .48,
                      height: MediaQuery.of(context).size.height * .24,
                      //height: 196,
                      //width: 208,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/top_related_bg.png'),
                              fit: BoxFit.fill)),
                      child: Image.asset(
                        'assets/images/top_related_item${index + 1}.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .48,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Towel',
                                  style: textstyle.copyWith(
                                      color: ColorUtils.blueHintText,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Liano Products',
                                  style: textstyle.copyWith(
                                      fontSize: 12,
                                      color: ColorUtils.darkTextGray),
                                )
                              ],
                            )),
                            PriceWidget(
                              text: '1000',
                              textStyle: textstyle.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  color: ColorUtils.darkTextGray,
                                  fontSize: 14),
                            ),
                            SizeUtils.horizontalSpacing(width: 5),
                            PriceWidget(
                              text: '500',
                              textStyle: textstyle.copyWith(
                                  color: ColorUtils.darkTextGray, fontSize: 14),
                            ),
                          ],
                        )),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

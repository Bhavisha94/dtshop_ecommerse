import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';

class BestDealWidget extends StatelessWidget {
  const BestDealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .42,
      color: ColorUtils.bodyBg,
      child: Column(
        children: [
          const TitleWidget(
            title: 'Best Deal on Laptops',
            subTitle: 'Best Deal for First Customers',
            showMoreIcon: true,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          Flexible(
              child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                      width: 191,
                      height: 200,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            ColorUtils.orangeGradient,
                            ColorUtils.redGradient
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/best_deal_bg.png',
                                ),
                                fit: BoxFit.fill)),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const Spacer(),
                                Container(
                                  width: 191,
                                  height: 41,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/deal_table.png'),
                                          fit: BoxFit.fill)),
                                )
                              ],
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * .022,
                              left: MediaQuery.of(context).size.width * .06,
                              child: Image.asset(
                                'assets/images/laptop.png',
                                width: 154,
                                height: 109,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Row(
                      children: [
                        Text(
                          'Dell CH Series',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              color: ColorUtils.gray3D,
                              fontSize: 18),
                        ),
                        SizeUtils.horizontalSpacing(width: 5),
                        Text(
                          '| UP to 25% off',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              color: ColorUtils.brown,
                              fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          )),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
        ],
      ),
    );
  }
}

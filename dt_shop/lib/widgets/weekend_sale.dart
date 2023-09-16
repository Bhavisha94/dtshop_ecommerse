import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WeekendSale extends StatelessWidget {
  WeekendSale({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorUtils.bodyBg,
      child: Column(
        children: [
          const TitleWidget(
            title: 'This weekend sales',
            subTitle: 'This week sales on top brands',
            showMoreIcon: false,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 175,
            color: const Color(0xff432db2),
            padding: const EdgeInsets.all(5),
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: 8,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 161,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/deals_img.png'),
                              fit: BoxFit.fill)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 101,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                const Color(0xff474D82).withOpacity(0),
                                const Color(0xff080D41),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Column(
                            children: [
                              SizeUtils.verticalSpacing(
                                  height: MediaQuery.of(context).size.height *
                                      .015),
                              Text(
                                'Dressbery',
                                style: textstyle.copyWith(
                                    color: ColorUtils.white,
                                    fontSize: 18,
                                    fontFamily: 'Inter'),
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Text(
                                'MIN 60% OFF',
                                style: textstyle.copyWith(
                                    color: ColorUtils.white,
                                    fontFamily: 'AbhayaLibre',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                    bottom: 7,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 8,
                          effect: const WormEffect(
                              dotWidth: 6,
                              dotHeight: 6,
                              spacing: 4,
                              activeDotColor: ColorUtils.white,
                              dotColor: ColorUtils.dotGreyColor),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
        ],
      ),
    );
  }
}

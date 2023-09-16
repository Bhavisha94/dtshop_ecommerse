import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';

class TopDealWidget extends StatelessWidget {
  const TopDealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: 'Top Deal on Smartphones',
          subTitle: 'Top new Smartphones like vivo, oppo, & also apple',
          showMoreIcon: true,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .3,
          padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
          color: ColorUtils.bodyBg,
          child: ListView.builder(
            itemCount: topDealList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 184,
                  width: 122,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${topDealList[index].backgrond.toString()}.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .007),
                      Text(
                        topDealList[index].name.toString(),
                        style: textstyle.copyWith(
                            color: ColorUtils.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'AbhayaLibre',
                            fontSize: 16),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Image.asset(
                        'assets/images/${topDealList[index].image}.png',
                        width: 63,
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                      const Spacer(),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 27,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                ColorUtils.blueHintText,
                                ColorUtils.blueHintText.withOpacity(.27)
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/rs_small.png',
                                color: ColorUtils.white,
                                width: 7,
                                height: 8,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '12999',
                                style: textstyle.copyWith(
                                    color: ColorUtils.white, fontSize: 16),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

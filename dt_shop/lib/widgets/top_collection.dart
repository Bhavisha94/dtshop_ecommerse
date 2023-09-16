import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopCollectionWidget extends StatelessWidget {
  const TopCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(
          title: 'Top Collection for you',
          subTitle: 'Price Low to High',
          showMoreIcon: true,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .43,
          color: ColorUtils.bodyBg,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BgImageWidget(
                  width: MediaQuery.of(context).size.width * .45,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/top_col1.png',
                        width: 101,
                        height: 219,
                        fit: BoxFit.fill,
                      ),
                      const PriceWidget(collectionName: 'Orange Top with jeans')
                    ],
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * .46,
                height: MediaQuery.of(context).size.height * .4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BgImageWidget(
                      width: MediaQuery.of(context).size.width * .46,
                      height: MediaQuery.of(context).size.height * .195,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/top_col2.png',
                            width: 56,
                            height: 104,
                            fit: BoxFit.fill,
                          ),
                          const Expanded(
                            child: PriceWidget(
                                collectionName: 'Child jeans and tshirt'),
                          )
                        ],
                      ),
                    ),
                    BgImageWidget(
                      width: MediaQuery.of(context).size.width * .46,
                      height: MediaQuery.of(context).size.height * .195,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/top_col3.png',
                            width: 77,
                            height: 72,
                            fit: BoxFit.fill,
                          ),
                          const PriceWidget(collectionName: 'Levi jacket')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BgImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  const BgImageWidget(
      {super.key, required this.width, required this.height, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/top_collection_bg.png'),
              fit: BoxFit.fill)),
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff97B9FB),
          Color(0xffFFFFFF),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: child,
      ),
    );
  }
}

class PriceWidget extends StatelessWidget {
  final String collectionName;
  const PriceWidget({super.key, required this.collectionName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          collectionName,
          textAlign: TextAlign.center,
          style: textstyle.copyWith(
              fontFamily: 'AbhayaLibre',
              fontSize: 14,
              color: ColorUtils.blueHintText),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rs 500',
              style: textstyle.copyWith(
                fontFamily: 'AbhayaLibre',
                fontSize: 14,
              ),
            ),
            SizeUtils.horizontalSpacing(width: 5),
            SvgPicture.asset('assets/images/star.svg'),
            Text(
              '4.5',
              style: textstyle.copyWith(
                  fontFamily: 'AbhayaLibre', color: ColorUtils.brown),
            )
          ],
        )
      ],
    );
  }
}

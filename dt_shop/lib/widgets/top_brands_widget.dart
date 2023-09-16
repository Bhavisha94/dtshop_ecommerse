import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.065,
          color: ColorUtils.white,
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.065,
                child: Center(
                  child: Text(
                    'Top Brands',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.065,
                  child: const Icon(
                    Icons.more_horiz_rounded,
                    color: ColorUtils.blueHintText,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .13,
          color: ColorUtils.bodyBg,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: brands.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'assets/images/${brands[index]}.png',
                  width: 62,
                  height: 62,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

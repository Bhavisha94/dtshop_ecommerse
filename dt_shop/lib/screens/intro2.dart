import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .42,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/intro2.png'),
                  fit: BoxFit.fill)),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .09),
        Text(
          'Add To Cart',
          style: textstyle.copyWith(
              color: ColorUtils.brown,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .03),
        Text(
          "Lörem ipsum nymägisk sinde pare betalblogg. Valerat sena. \nSperar ekograf sons och vinar. Syreras nesk, speselig. \nTysa vises. Dövis. \nMifegen donera. Klimatnödläge bokstavsdrog krodött men yn.",
          textAlign: TextAlign.center,
          style: textstyle.copyWith(
              color: ColorUtils.grayShareA5,
              fontSize: 10,
              fontWeight: FontWeight.bold),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .04),
      ],
    );
  }
}

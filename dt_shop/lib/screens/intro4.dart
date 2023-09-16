import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .95,
          height: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/intro4.png'),
                  fit: BoxFit.fill)),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .06),
        Text(
          'Add Wallet',
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

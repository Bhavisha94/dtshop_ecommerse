import 'package:dt_shop/utils/size.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  const PriceWidget({super.key, this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .02,
      child: Row(
        children: [
          Image.asset(
            'assets/images/rs_small.png',
            width: 5,
            height: 6,
          ),
          SizeUtils.horizontalSpacing(width: 3),
          Text(
            text.toString(),
            style: textStyle,
          )
        ],
      ),
    );
  }
}

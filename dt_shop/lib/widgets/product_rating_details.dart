import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRatingDetailsScreenWidget extends StatelessWidget {
  const ProductRatingDetailsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: ColorUtils.lightPurpleShade,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Rating & Reviews',
            style: textstyle.copyWith(
                color: ColorUtils.blueHintText,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  '4.0',
                  style: textstyle.copyWith(
                      color: const Color(0xff424242),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 15,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star,
                      color: ColorUtils.darkOrange,
                    );
                  },
                  onRatingUpdate: (value) {},
                ),
                Text(
                  'Based on 23 reviews',
                  style: textstyle.copyWith(
                      color: const Color(0xffDCDCDC), fontSize: 10),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          review(context, 'Excellent', .65, ColorUtils.orangeShadeFc),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          review(context, 'Good', .47, ColorUtils.cyan),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          review(context, 'Average', .45, ColorUtils.parrotGreenDark),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          review(context, 'Below Average', .33, ColorUtils.pinkDark),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          review(context, 'Poor', .15, ColorUtils.red)
        ],
      ),
    );
  }

  Row review(BuildContext context, String title, double review, Color color) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: Text(
            title,
            style: textstyle.copyWith(
                color: const Color(0xffB5B5B5),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: LinearProgressIndicator(
          value: review,
          backgroundColor: const Color(0xffF1F1F1),
          color: color,
        ))
      ],
    );
  }
}

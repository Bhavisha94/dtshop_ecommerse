import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateDialog extends StatefulWidget {
  const RateDialog({super.key});

  @override
  State<RateDialog> createState() => _RateDialogState();
}

class _RateDialogState extends State<RateDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .3,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            Text(
              'Rate Your Experiance with DTShop',
              style: textstyle.copyWith(
                  color: ColorUtils.blueHintText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 35,
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: ColorUtils.amber,
                );
              },
              onRatingUpdate: (value) {},
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .04),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF9F9F9)),
                child: Center(
                  child: Text(
                    'Later',
                    style: textstyle.copyWith(
                        color: const Color(0xff7C7C7C),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

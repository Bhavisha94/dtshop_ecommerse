import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookingOrderDetailsWidget extends StatefulWidget {
  final String trackInfo;
  const BookingOrderDetailsWidget({super.key, required this.trackInfo});

  @override
  State<BookingOrderDetailsWidget> createState() =>
      _BookingOrderDetailsWidgetState();
}

class _BookingOrderDetailsWidgetState extends State<BookingOrderDetailsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              "Order ID : 1522894535",
              style: textstyle.copyWith(
                  color: ColorUtils.grayShade80, fontSize: 17),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                Text(
                  'Supplier:',
                  style: textstyle.copyWith(
                      color: ColorUtils.grayShade80, fontSize: 17),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .02),
                Text(
                  'Roadster Designers',
                  style: textstyle.copyWith(fontSize: 17),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/women_jeans.png'),
                          fit: BoxFit.fill)),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .03),
                SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .58,
                          child: Text(
                            'Women Black jegging fit',
                            overflow: TextOverflow.ellipsis,
                            style: textstyle.copyWith(
                                color: const Color(0xff696969), fontSize: 17),
                          )),
                      Text(
                        'Size: 34',
                        overflow: TextOverflow.ellipsis,
                        style: textstyle.copyWith(
                            color: const Color(0xff696969), fontSize: 17),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: 30,
                        color: widget.trackInfo == 'Delivered'
                            ? ColorUtils.lightPurple
                            : ColorUtils.lightCream,
                        child: Center(
                          child: Text(
                            widget.trackInfo,
                            style: textstyle.copyWith(
                              color: widget.trackInfo == 'Delivered'
                                  ? ColorUtils.purple
                                  : ColorUtils.lightPink,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            widget.trackInfo == 'Delivered'
                ? Row(
                    children: [
                      Text(
                        'Rate your experience',
                        style: textstyle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Expanded(
                          child: RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context, index) {
                          return const Icon(
                            Icons.star,
                            color: ColorUtils.amber,
                          );
                        },
                        onRatingUpdate: (value) {},
                      ))
                    ],
                  )
                : const SizedBox(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015)
          ],
        ),
      ),
    );
  }
}

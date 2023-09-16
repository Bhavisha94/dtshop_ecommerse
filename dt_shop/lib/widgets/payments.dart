import 'package:dt_shop/screens/order_placed.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:dt_shop/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentsDetails extends StatelessWidget {
  const PaymentsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 106,
            color: ColorUtils.lightPurpleShade,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/offer.svg'),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .015),
                    Text(
                      'Bank Offer',
                      style: textstyle.copyWith(
                          color: const Color(0xff4E4E4E),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  '10% Instant Discount on Kotak Credit and Debit Card on a min spend of Rs.3000 TCA',
                  style: textstyle.copyWith(
                      color: const Color(0xff686868), fontSize: 14),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            color: ColorUtils.lightPurpleShade,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Payment Options',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                options('PhonePe/Google Pay/BHIM UPI', 'gpay'),
                const DividerWidget(),
                options('Credit/Debit Card', 'credit'),
                const DividerWidget(),
                options('Paytm/Wallets', 'paytm'),
                const DividerWidget(),
                options('Net Banking', 'net_bank'),
                const DividerWidget(),
                options('EMI/Pay Later', 'emi'),
                const DividerWidget(),
                options('Cash On Delivery', 'cod')
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: ColorUtils.lightPurpleShade,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price Detail',
                  style: textstyle.copyWith(
                      color: ColorUtils.blueHintText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const DividerWidget(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                priceDetails(
                    context,
                    'Total MRP',
                    '1200',
                    const Color(0xff424242),
                    FontWeight.normal,
                    const Color(0xff5C5C5C)),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .01),
                priceDetails(
                    context,
                    'Discount on MRP',
                    '200',
                    ColorUtils.green,
                    FontWeight.normal,
                    const Color(0xff5C5C5C)),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .01),
                const DividerWidget(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .01),
                priceDetails(
                    context,
                    'Total Amount',
                    '1000',
                    const Color(0xff424242),
                    FontWeight.w600,
                    const Color(0xff3A3A3A)),
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            height: 83,
            color: ColorUtils.lightPurpleShade,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/rs_small.png',
                          color: ColorUtils.gray42,
                          width: 14,
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .01),
                        Text(
                          '1000',
                          style: textstyle.copyWith(
                              color: ColorUtils.gray42,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Text(
                      'View Details',
                      style: textstyle.copyWith(
                          color: ColorUtils.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Button(
                  text: 'Pay Now',
                  width: MediaQuery.of(context).size.width * .5,
                  height: 60,
                  borderRadius: 8,
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const OrderPlaced())),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row priceDetails(BuildContext context, String text, String price, Color color,
      FontWeight fontWeight, Color textColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: textstyle.copyWith(
              color: textColor, fontSize: 14, fontWeight: fontWeight),
        ),
        SizedBox(
          child: Row(
            children: [
              Image.asset(
                'assets/images/rs_small.png',
                width: 7.41,
                height: 10.51,
                fit: BoxFit.fill,
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .01),
              Text(
                price,
                style: textstyle.copyWith(
                    color: color, fontWeight: FontWeight.w600, fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }

  ListTile options(String name, String icon) {
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
      leading: SvgPicture.asset('assets/images/$icon.svg'),
      title: Text(
        name,
        style: textstyle.copyWith(color: const Color(0xff898989), fontSize: 14),
      ),
      trailing: const Icon(Icons.keyboard_arrow_down_rounded),
    );
  }
}

import 'package:dt_shop/cubit/cart/cubit/cart_track_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: ColorUtils.lightPurpleShade,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Patel Bhoomi',
                  style: textstyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'Patel Bhoomi, 9 Atlanta HWy # 500 \nGainesvile \nGerogia 30504',
                  style: textstyle.copyWith(
                      color: const Color(0xff636363), fontSize: 14),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Row(
                  children: [
                    Text(
                      'Mobile : ',
                      style: textstyle.copyWith(
                        color: const Color(0xff636363),
                      ),
                    ),
                    Text('+91 5255654228',
                        style: textstyle.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14))
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 49,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border:
                          Border.all(color: ColorUtils.blueHintText, width: .5),
                      color: ColorUtils.white),
                  child: Center(
                    child: Text(
                      'Change Or Add Address',
                      style: textstyle.copyWith(
                          color: const Color(0xff272727),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: ColorUtils.lightPurpleShade,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'Delivery Estimate',
                  style: textstyle.copyWith(
                      color: ColorUtils.blueHintText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: ColorUtils.white,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 86,
                        height: 86,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffD4E2FF), Color(0xffE7DEFF)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Center(
                          child: Image.asset(
                            'assets/images/dress.png',
                            width: 52,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Estimated delivery by',
                      style: textstyle.copyWith(
                          color: const Color(0xff999999), fontSize: 14),
                    ),
                    Text(
                      '16 Oct 2022',
                      style: textstyle.copyWith(
                          fontSize: 14,
                          color: const Color(0xff3E3E3E),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: ColorUtils.white,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: 86,
                        height: 86,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffD4E2FF), Color(0xffE7DEFF)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Center(
                          child: Image.asset(
                            'assets/images/dress.png',
                            width: 52,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Estimated delivery by',
                      style: textstyle.copyWith(
                          color: const Color(0xff999999), fontSize: 14),
                    ),
                    Text(
                      '16 Oct 2022',
                      style: textstyle.copyWith(
                          fontSize: 14,
                          color: const Color(0xff3E3E3E),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * 0.015),
                Button(
                  text: 'Continue',
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  borderRadius: 0,
                  onTap: () => context.read<CartTrackCubit>().selectedIndex(2),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * 0.015),
              ],
            ),
          )
        ],
      ),
    );
  }
}

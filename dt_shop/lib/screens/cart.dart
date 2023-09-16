// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:dt_shop/cubit/cart/cubit/cart_track_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/add_address.dart';
import 'package:dt_shop/widgets/added_in_cart.dart';
import 'package:dt_shop/widgets/payments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Widget> infoWidget = [
    const AddedInCart(),
    const AddAddress(),
    const PaymentsDetails()
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.white,
        title: BlocBuilder<CartTrackCubit, CartTrackState>(
          builder: (context, state) {
            return Text(
              index != 0 ? 'Address' : '',
              style: textstyle.copyWith(
                  color: ColorUtils.blueHintText, fontSize: 14),
            );
          },
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<CartTrackCubit, CartTrackState>(
            builder: (context, state) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 112,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                color: const Color(0xffFAF9FE),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/cart_track1.svg'),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .015),
                        Text(
                          'Added in cart',
                          style: textstyle.copyWith(
                              fontSize: 14, color: ColorUtils.orange),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      width: 15,
                      child: VerticalDivider(
                        width: 2,
                        color: index == 1 || index == 2
                            ? ColorUtils.orange
                            : ColorUtils.grayShadeD9,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 15,
                            child: Center(
                                child: SvgPicture.asset(
                                    'assets/images/track.svg',
                                    color: index == 1 || index == 2
                                        ? ColorUtils.orange
                                        : ColorUtils.grayShadeD9))),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .015),
                        Text(
                          'Added Address',
                          style: textstyle.copyWith(
                              fontSize: 14,
                              color: index == 1 || index == 2
                                  ? ColorUtils.orange
                                  : ColorUtils.grayShadeD9),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      width: 15,
                      child: VerticalDivider(
                        width: 2,
                        color: index == 2
                            ? ColorUtils.orange
                            : ColorUtils.grayShadeD9,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 15,
                            child: Center(
                                child: SvgPicture.asset(
                              'assets/images/track.svg',
                              color: index == 2
                                  ? ColorUtils.orange
                                  : ColorUtils.grayShadeD9,
                            ))),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .015),
                        Text(
                          'Payments',
                          style: textstyle.copyWith(
                            fontSize: 14,
                            color: index == 2
                                ? ColorUtils.orange
                                : ColorUtils.grayShadeD9,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          BlocConsumer<CartTrackCubit, CartTrackState>(
            listener: (context, state) {
              if (state is CartTrackIndex) {
                index = state.index;
                log(index.toString());
              }
            },
            builder: (context, state) {
              return Expanded(child: infoWidget[index]);
            },
          )
        ],
      ),
    );
  }
}

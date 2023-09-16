// ignore_for_file: deprecated_member_use

import 'package:dt_shop/cubit/order/cubit/order_track_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/booking_order_details.dart';
import 'package:dt_shop/widgets/custom_appbar.dart';
import 'package:dt_shop/widgets/divider.dart';
import 'package:dt_shop/widgets/order_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: CustomAppbar.appBar('Orders'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorUtils.bodyBg,
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffBBBBBB)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Align(
                              widthFactor: 1,
                              heightFactor: 1,
                              child: SvgPicture.asset(
                                'assets/images/search.svg',
                                color: ColorUtils.gray87,
                              )),
                          hintText: 'Search in orders',
                          hintStyle: hintTextStyle.copyWith(
                            fontSize: 16,
                            color: ColorUtils.gray87,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        OrderOptionWidget(
                          option: 'All',
                          index: 0,
                          width: MediaQuery.of(context).size.width * .18,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(0),
                        ),
                        OrderOptionWidget(
                          option: 'Ordered',
                          index: 1,
                          width: MediaQuery.of(context).size.width * .21,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(1),
                        ),
                        OrderOptionWidget(
                          option: 'Shipped',
                          index: 2,
                          width: MediaQuery.of(context).size.width * .21,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(2),
                        ),
                        OrderOptionWidget(
                          option: 'Return',
                          index: 3,
                          width: MediaQuery.of(context).size.width * .2,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(3),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        OrderOptionWidget(
                          option: 'Delivered',
                          index: 4,
                          width: MediaQuery.of(context).size.width * .24,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(4),
                        ),
                        OrderOptionWidget(
                          option: 'Exchange',
                          index: 5,
                          width: MediaQuery.of(context).size.width * .24,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(5),
                        ),
                        OrderOptionWidget(
                          option: 'Others',
                          index: 6,
                          width: MediaQuery.of(context).size.width * .21,
                          onTap: () => context
                              .read<OrderTrackCubit>()
                              .selectedOrderIndex(6),
                        ),
                      ],
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .005),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6295,
              child: Card(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Text(
                          '6th April',
                          style: textstyle.copyWith(
                              fontSize: 18, color: const Color(0xff404040)),
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      const DividerWidget(),
                      const BookingOrderDetailsWidget(trackInfo: 'Delivered'),
                      const DividerWidget(),
                      const BookingOrderDetailsWidget(trackInfo: 'Cancel')
                    ],
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

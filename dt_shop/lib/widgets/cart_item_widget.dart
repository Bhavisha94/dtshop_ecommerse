// ignore_for_file: must_be_immutable

import 'package:dt_shop/cubit/cart/cubit/select_item_details_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/select_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemWidget extends StatelessWidget {
  int qty;
  int selectedSize;
  VoidCallback? onSelecteSize;
  VoidCallback? onTapDecrease;
  VoidCallback? onTapIncrease;
  CartItemWidget(
      {super.key,
      required this.qty,
      required this.selectedSize,
      this.onSelecteSize,
      this.onTapIncrease,
      this.onTapDecrease});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectItemDetailsCubit, SelectItemDetailsState>(
      listener: (context, state) {
        if (state is SelectQuantity) {
          qty = state.index;
        } else if (state is SelectSize) {
          selectedSize = state.size;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 195,
            color: ColorUtils.lightPurpleShade,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    width: 122,
                    height: 163,
                    padding: const EdgeInsets.all(5),
                    color: ColorUtils.white,
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xffD4E2FF), Color(0xffE7DEFF)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/dress.png',
                          width: 98,
                          height: 112,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .02),
                  SizedBox(
                    height: 163,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lumino Red Dress',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              color: ColorUtils.shadeGrayB4,
                              fontSize: 11),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .01),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/rs.png',
                              width: 6.05,
                              height: 8.55,
                              fit: BoxFit.fill,
                            ),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            Text(
                              '800',
                              style: textstyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: ColorUtils.blueHintText),
                            )
                          ],
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .01),
                        Text(
                          'Select Quantity',
                          style: textstyle.copyWith(
                              color: ColorUtils.shadeGrayB4, fontSize: 10),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .01),
                        Row(
                          children: [
                            InkWell(
                              onTap: onTapDecrease,
                              child: Container(
                                width: 20,
                                height: 20,
                                color: ColorUtils.blueHintText.withOpacity(.1),
                                child: const Center(
                                    child: Icon(Icons.remove,
                                        size: 15,
                                        color: ColorUtils.shadeGrayB4)),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              color: ColorUtils.blueHintText.withOpacity(.2),
                              child: Center(
                                child: Text(
                                  qty.toString(),
                                  style: textstyle.copyWith(
                                      fontSize: 16,
                                      color: ColorUtils.blueHintText,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<SelectItemDetailsCubit>()
                                    .quantityIncrease(qty);
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                color: ColorUtils.blueHintText.withOpacity(.1),
                                child: const Center(
                                    child: Icon(Icons.add,
                                        size: 15, color: Color(0xff545454))),
                              ),
                            ),
                          ],
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .01),
                        Text('Select Size',
                            style: textstyle.copyWith(
                                color: ColorUtils.shadeGrayC0,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Row(
                          children: [
                            SelectSizeWidget(
                              index: 1,
                              size: 'M',
                              fontSize: 16,
                              onTap: () {
                                context.read<SelectItemDetailsCubit>().size(1);
                              },
                              selectedSize: selectedSize,
                            ),
                            SizeUtils.horizontalSpacing(
                              width: 10,
                            ),
                            SelectSizeWidget(
                              index: 2,
                              size: 'L',
                              fontSize: 16,
                              onTap: () {
                                context.read<SelectItemDetailsCubit>().size(2);
                              },
                              selectedSize: selectedSize,
                            ),
                            SizeUtils.horizontalSpacing(width: 10),
                            SelectSizeWidget(
                              index: 3,
                              size: 'XL',
                              fontSize: 10,
                              onTap: () {
                                context.read<SelectItemDetailsCubit>().size(3);
                              },
                              selectedSize: selectedSize,
                            ),
                            SizeUtils.horizontalSpacing(width: 10),
                            SelectSizeWidget(
                                index: 4,
                                size: 'XXL',
                                fontSize: 10,
                                onTap: () {
                                  context
                                      .read<SelectItemDetailsCubit>()
                                      .size(4);
                                },
                                selectedSize: selectedSize)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

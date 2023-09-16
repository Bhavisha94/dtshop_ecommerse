import 'dart:developer';

import 'package:dt_shop/cubit/cart/cubit/cart_track_cubit.dart';
import 'package:dt_shop/cubit/cart/cubit/select_item_details_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:dt_shop/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddedInCart extends StatefulWidget {
  const AddedInCart({super.key});

  @override
  State<AddedInCart> createState() => _AddedInCartState();
}

class _AddedInCartState extends State<AddedInCart> {
  int qty = 1, qtyItem2 = 1, selectedSize1 = 1, selectedSize2 = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 72,
            color: ColorUtils.lightPurpleShade,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .81,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Deliver to:',
                        style: textstyle.copyWith(
                            color: ColorUtils.shadeC2, fontSize: 10.5)),
                    TextSpan(
                        text: ' Patel Bhoomi, 30504 ',
                        style: textstyle.copyWith(
                            color: const Color(0xff275ED3), fontSize: 10.5)),
                    TextSpan(
                        text:
                            ', 2550 Atlanta Hwy #500 , Gainesville, Georgia, 30504, 34.240929',
                        style: textstyle.copyWith(
                            color: ColorUtils.shadeC2, fontSize: 10.5))
                  ])),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Change',
                    style: textstyle.copyWith(
                        color: ColorUtils.orange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BlocListener<SelectItemDetailsCubit,
                  SelectItemDetailsState>(
                listener: (context, state) {
                  if (state is SelectQuantity) {
                    itemList[index].qty = state.index;
                    log(qty.toString());
                  }
                },
                child: CartItemWidget(
                  qty: itemList[index].qty,
                  selectedSize: itemList[index].size,
                  onTapIncrease: () {
                    context.read<SelectItemDetailsCubit>().quantityIncrease(
                          itemList[index].qty,
                        );
                  },
                  onTapDecrease: () {
                    context.read<SelectItemDetailsCubit>().quantityDecrease(
                          itemList[index].qty,
                        );
                  },
                ),
              );
            },
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * 0.02),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 47,
            color: const Color(0xffCDC0FF),
            child: Row(
              children: [
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .015),
                Text(
                  'Total amount:',
                  style: textstyle.copyWith(color: ColorUtils.white),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .015),
                Text(
                  '1600',
                  style: textstyle.copyWith(
                      color: const Color(0xff163780),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * 0.02),
          Button(
            text: 'Place Order',
            width: MediaQuery.of(context).size.width,
            height: 50,
            borderRadius: 0,
            onTap: () => context.read<CartTrackCubit>().selectedIndex(1),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * 0.02),
        ],
      ),
    );
  }
}

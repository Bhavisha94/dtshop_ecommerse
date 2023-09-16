import 'package:dt_shop/cubit/order/cubit/order_track_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class OrderOptionWidget extends StatelessWidget {
  int? index;
  String? option;
  double? width;
  VoidCallback? onTap;
  OrderOptionWidget(
      {super.key, this.index, this.option, this.width, this.onTap});

  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderTrackCubit, OrderTrackState>(
      listener: (context, state) {
        if (state is OrderTrackIndex) {
          idx = state.index;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: onTap,
            child: Container(
              //height: 39,
              width: width,
              height: MediaQuery.of(context).size.height * .055,
              decoration: BoxDecoration(
                border:
                    index == idx ? Border.all(color: ColorUtils.violet) : null,
                color: const Color(0xfff3f3f3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  option.toString(),
                  style: textstyle.copyWith(
                      fontSize: 16,
                      color: idx == index
                          ? ColorUtils.violet
                          : const Color(0xff787878)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

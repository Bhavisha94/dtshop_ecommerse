import 'package:dt_shop/cubit/cart/cubit/select_item_details_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/select_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SizeWidget extends StatelessWidget {
  int selectedSize;
  SizeWidget({super.key, required this.selectedSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Size',
          style: textstyle.copyWith(
              color: ColorUtils.shade57,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        BlocConsumer<SelectItemDetailsCubit, SelectItemDetailsState>(
          listener: (context, state) {
            if (state is SelectSize) {
              selectedSize = state.size;
            }
          },
          builder: (context, state) {
            return Row(
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
                      context.read<SelectItemDetailsCubit>().size(4);
                    },
                    selectedSize: selectedSize)
              ],
            );
          },
        )
      ],
    );
  }
}

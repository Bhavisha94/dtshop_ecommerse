import 'package:dt_shop/cubit/explore/cubit/category_checkbox_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreCategoryFilter extends StatefulWidget {
  const ExploreCategoryFilter({super.key});

  @override
  State<ExploreCategoryFilter> createState() => _ExploreCategoryFilterState();
}

class _ExploreCategoryFilterState extends State<ExploreCategoryFilter> {
  int index = 0;
  double start = 20;
  double end = 60;
  RangeValues currentRangeValues = const RangeValues(1, 100);
  RangeLabels labels = const RangeLabels('1', "100");
  bool selectedCheckBoxIndex = true;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
              color: ColorUtils.white, borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: BlocConsumer<CategoryCheckboxCubit, CategoryCheckboxState>(
            listener: (context, state) {
              if (state is CategoryCheckboxSelected) {
                checkboxList[state.index].value = state.checkboxValue;
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: textstyle.copyWith(
                          color: ColorUtils.blueHintText,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Row(
                      children: [
                        categoryWidget(
                            checkboxList[0].value,
                            checkboxList[0].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(0, p0!)),
                        categoryWidget(
                            checkboxList[1].value,
                            checkboxList[1].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(1, p0!)),
                        categoryWidget(
                            checkboxList[2].value,
                            checkboxList[2].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(2, p0!)),
                        categoryWidget(
                            checkboxList[3].value,
                            checkboxList[3].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(3, p0!)),
                      ],
                    ),
                    Row(
                      children: [
                        categoryWidget(
                            checkboxList[4].value,
                            checkboxList[4].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(4, p0!)),
                        categoryWidget(
                            checkboxList[5].value,
                            checkboxList[5].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(5, p0!)),
                        categoryWidget(
                            checkboxList[6].value,
                            checkboxList[6].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(6, p0!)),
                      ],
                    ),
                    Row(
                      children: [
                        categoryWidget(
                            checkboxList[7].value,
                            checkboxList[7].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(7, p0!)),
                        categoryWidget(
                            checkboxList[8].value,
                            checkboxList[8].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(8, p0!)),
                        categoryWidget(
                            checkboxList[9].value,
                            checkboxList[9].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(9, p0!)),
                        categoryWidget(
                            checkboxList[10].value,
                            checkboxList[10].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(10, p0!))
                      ],
                    ),
                    Row(
                      children: [
                        categoryWidget(
                            checkboxList[11].value,
                            checkboxList[11].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(11, p0!)),
                        categoryWidget(
                            checkboxList[12].value,
                            checkboxList[12].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(12, p0!)),
                        categoryWidget(
                            checkboxList[13].value,
                            checkboxList[13].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(13, p0!)),
                      ],
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Text(
                      'Price Range',
                      style: textstyle.copyWith(
                          color: ColorUtils.blueHintText,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    const RangeSliderWidget(),
                    Text(
                      'Ratings',
                      style: textstyle.copyWith(
                          color: ColorUtils.blueHintText,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Row(
                      children: [
                        categoryWidget(
                            checkboxList[14].value,
                            checkboxList[14].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(14, p0!)),
                        categoryWidget(
                            checkboxList[15].value,
                            checkboxList[15].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(15, p0!)),
                        categoryWidget(
                            checkboxList[16].value,
                            checkboxList[16].title,
                            (p0) => context
                                .read<CategoryCheckboxCubit>()
                                .checked(16, p0!))
                      ],
                    ),
                    categoryWidget(
                        checkboxList[17].value,
                        checkboxList[17].title,
                        (p0) => context
                            .read<CategoryCheckboxCubit>()
                            .checked(17, p0!)),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '500 Items',
                          style: textstyle.copyWith(
                              color: ColorUtils.blueHintText, fontSize: 15),
                        ),
                        Container(
                          width: 98,
                          height: 29,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorUtils.grayShadeD9)),
                          child: Center(
                            child: Text(
                              'Clear',
                              style: textstyle.copyWith(
                                  color: ColorUtils.grayShadeD9, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          width: 98,
                          height: 29,
                          color: ColorUtils.blueHintText,
                          child: Center(
                            child: Text(
                              'Done',
                              style: textstyle.copyWith(
                                  color: ColorUtils.white, fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

categoryWidget(bool value, String name, Function(bool?)? onChanged) {
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: value,
              activeColor: ColorUtils.brown,
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(color: ColorUtils.grayShadeD9),
              ),
              onChanged: onChanged,
            ),
          ),
          SizeUtils.horizontalSpacing(width: 5),
          Text(name,
              style: textstyle.copyWith(
                  color: ColorUtils.grayShadeD9, fontSize: 14)),
          SizeUtils.horizontalSpacing(width: 07)
        ],
      ),
      SizeUtils.verticalSpacing(height: 5),
    ],
  );
}

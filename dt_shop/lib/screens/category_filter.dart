import 'package:dt_shop/cubit/explore/cubit/category_checkbox_cubit.dart';
import 'package:dt_shop/screens/color_widget.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/filter_dialog.dart';
import 'package:dt_shop/widgets/range_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({super.key});

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  int index = 0;
  double start = 20;
  double end = 60;
  RangeValues currentRangeValues = const RangeValues(1, 100);
  RangeLabels labels = const RangeLabels('1', "100");
  bool selectedCheckBoxIndex = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            title(context, 'Category'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                categoryWidget(
                    checkboxList[0].value,
                    checkboxList[0].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(0, p0!)),
                categoryWidget(
                    checkboxList[1].value,
                    checkboxList[1].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(1, p0!)),
                categoryWidget(
                    checkboxList[2].value,
                    checkboxList[2].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(2, p0!)),
              ],
            ),
            title(context, 'Color'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                ColorWidget(
                  text: 'Red',
                  index: 0,
                  width: MediaQuery.of(context).size.width * .13,
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .015),
                ColorWidget(
                  text: 'Brown',
                  width: MediaQuery.of(context).size.width * .17,
                  index: 1,
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .015),
                ColorWidget(
                  text: 'Pink',
                  width: MediaQuery.of(context).size.width * .15,
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .015),
                ColorWidget(
                  text: 'Blue',
                  width: MediaQuery.of(context).size.width * .13,
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            title(context, 'Price Range'),
            const RangeSliderWidget(),
            title(context, 'Size'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
                height: MediaQuery.of(context).size.height * .08,
                child: GridView.builder(
                  itemCount: sizeList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.5),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: sizeList[index].value,
                            activeColor: ColorUtils.brown,
                            side: MaterialStateBorderSide.resolveWith(
                              (states) => const BorderSide(
                                  color: ColorUtils.grayShadeD9),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        SizeUtils.horizontalSpacing(width: 5),
                        Text(
                          sizeList[index].size,
                          style: textstyle.copyWith(
                              fontSize: 15, color: ColorUtils.grayShadeD9),
                        )
                      ],
                    );
                  },
                )),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            title(context, 'Ratings'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                categoryWidget(
                    checkboxList[14].value,
                    checkboxList[14].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(14, p0!)),
                categoryWidget(
                    checkboxList[15].value,
                    checkboxList[15].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(15, p0!)),
                categoryWidget(
                    checkboxList[16].value,
                    checkboxList[16].title,
                    (p0) =>
                        context.read<CategoryCheckboxCubit>().checked(16, p0!))
              ],
            ),
            categoryWidget(checkboxList[17].value, checkboxList[17].title,
                (p0) => context.read<CategoryCheckboxCubit>().checked(17, p0!)),
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
                      border: Border.all(color: ColorUtils.grayShadeD9)),
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
      ),
    );
  }

  Row title(BuildContext context, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontWeight: FontWeight.w600,
              fontSize: 15),
        ),
        SizeUtils.horizontalSpacing(
            width: MediaQuery.of(context).size.width * .015),
        SvgPicture.asset('assets/images/dot.svg')
      ],
    );
  }
}

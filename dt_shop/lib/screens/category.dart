import 'package:dt_shop/cubit/category/cubit/category_item_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/category_name.dart';
import 'package:dt_shop/widgets/category_screen_item.dart';
import 'package:dt_shop/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.transparent,
        title: Text(
          'Category',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchTextField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Row(
                    children: [
                      CategoryName(
                        index: 0,
                        width: MediaQuery.of(context).size.width * .14,
                        text: 'All',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(0),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 1,
                        width: MediaQuery.of(context).size.width * .13,
                        text: 'Men',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(1),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 2,
                        width: MediaQuery.of(context).size.width * .19,
                        text: 'Footware',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(2),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 3,
                        width: MediaQuery.of(context).size.width * .19,
                        text: 'Top Wear',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(3),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 4,
                        width: MediaQuery.of(context).size.width * .16,
                        text: 'Laptops',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(4),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    children: [
                      CategoryName(
                        index: 5,
                        width: MediaQuery.of(context).size.width * .14,
                        text: 'watch',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(5),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 6,
                        width: MediaQuery.of(context).size.width * .17,
                        text: 'Mobiles',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(6),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 7,
                        width: MediaQuery.of(context).size.width * .33,
                        text: 'Mobile Accessory',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(7),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 8,
                        width: MediaQuery.of(context).size.width * .17,
                        text: 'Camera',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(8),
                      ),
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    children: [
                      CategoryName(
                        index: 9,
                        width: MediaQuery.of(context).size.width * .36,
                        text: 'Kitchen & cookware',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(9),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 10,
                        width: MediaQuery.of(context).size.width * .26,
                        text: 'Home Decore',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(10),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 11,
                        width: MediaQuery.of(context).size.width * .26,
                        text: 'Home lighting',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(11),
                      ),
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    children: [
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 12,
                        width: MediaQuery.of(context).size.width * .38,
                        text: 'Office & study decore',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(12),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 13,
                        width: MediaQuery.of(context).size.width * .18,
                        text: 'Women',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(13),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      CategoryName(
                        index: 14,
                        width: MediaQuery.of(context).size.width * .25,
                        text: 'Winter wear',
                        onTap: () =>
                            context.read<CategoryItemCubit>().selectedIndex(14),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  const CategoriesWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:dt_shop/screens/category_filter.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemScreen extends StatefulWidget {
  const CategoryItemScreen({super.key});

  @override
  State<CategoryItemScreen> createState() => _CategoryItemScreenState();
}

class _CategoryItemScreenState extends State<CategoryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bodyBg,
      appBar: AppBar(
        backgroundColor: ColorUtils.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorUtils.blueHintText,
          ),
        ),
        titleSpacing: 0,
        title: Text(
          'Man T-shirts',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          SvgPicture.asset(
            'assets/images/cart.svg',
            color: ColorUtils.blueHintText,
          ),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .03),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SearchTextField(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => showFilterDialog(),
                  child: Container(
                    width: 77,
                    height: 28,
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/images/filter.svg'),
                        Text(
                          'Filters',
                          style: textstyle.copyWith(
                              color: ColorUtils.blueHintText,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Expanded(
                child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: .64),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      color: const Color(0xffB4CAFB),
                      padding: const EdgeInsets.all(3),
                      height: 214,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 195,
                              width: MediaQuery.of(context).size.width * .4,
                              color: ColorUtils.white,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: Image.asset(
                                      'assets/images/men_cat2.png',
                                      height: 170,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: SvgPicture.asset(
                                      'assets/images/cart.svg',
                                      color: ColorUtils.orange,
                                      width: 25,
                                      height: 18,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: ColorUtils.orange,
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/images/heart.svg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              child: SvgPicture.asset(
                                  'assets/images/top_corner.svg')),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: SvgPicture.asset(
                                  'assets/images/bottom_corner.svg')),
                        ],
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .005),
                    Text(
                      'Casual Black T-Shirt',
                      style: textstyle.copyWith(
                          fontFamily: 'AbhayaLibre',
                          fontSize: 10,
                          color: ColorUtils.blueHintText),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rs. 200',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizeUtils.horizontalSpacing(width: 7),
                        SvgPicture.asset('assets/images/star.svg'),
                        SizeUtils.horizontalSpacing(width: 4),
                        Text(
                          '4.5',
                          style: textstyle.copyWith(
                              fontFamily: 'AbhayaLibre',
                              color: ColorUtils.brown),
                        )
                      ],
                    )
                  ],
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  showFilterDialog() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => const CategoryFilter(),
    );
  }
}

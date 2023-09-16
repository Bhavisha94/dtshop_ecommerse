import 'package:dotted_border/dotted_border.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class HomePageCategory extends StatelessWidget {
  const HomePageCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .13,
      child: ListView.builder(
        itemCount: category.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: const [6, 2, 3, 7],
                  padding: EdgeInsets.zero,
                  strokeWidth: 2,
                  color: ColorUtils.blue,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xffEAE2FF),
                      borderRadius: BorderRadius.circular(55),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/${category[index].image}.png',
                          ),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .005),
                Text(
                  category[index].name,
                  style: textstyle.copyWith(
                    color: const Color(0xff0D2A67),
                    fontSize: 15,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

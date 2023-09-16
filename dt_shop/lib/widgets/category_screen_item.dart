import 'package:dt_shop/screens/category_item_screen.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .6,
      color: ColorUtils.bodyBg,
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: (itemWidth / itemHeight)),
        itemCount: allCategories.length,
        itemBuilder: (context, index) {
          return Container(
            color: ColorUtils.transparent,
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const CategoryItemScreen())),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorUtils.gradientColor1, width: 1.5),
                        gradient: LinearGradient(
                            colors: [
                              ColorUtils.gradientColor1.withOpacity(.2),
                              ColorUtils.gradientColor2.withOpacity(.3),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/${allCategories[index].image}.png',
                        width: allCategories[index].width,
                        height: allCategories[index].height,
                        //fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    allCategories[index].name.toString(),
                    style: textstyle.copyWith(
                        fontSize: 13,
                        color: ColorUtils.blueHintText,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

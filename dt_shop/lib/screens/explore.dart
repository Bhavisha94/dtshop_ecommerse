import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/filter_dialog.dart';
import 'package:dt_shop/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3.1;
    final double itemWidth = size.width / 2;

    return Container(
      color: ColorUtils.bgColor,
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: ColorUtils.transparent,
            title: Text(
              'Explore',
              style: textstyle.copyWith(
                  color: ColorUtils.blueHintText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          const SearchTextField(),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                    'Sort By',
                    style: textstyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.brown,
                        fontSize: 15),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: ColorUtils.brown,
                    size: 30,
                  )
                ]),
                InkWell(
                  onTap: () => showFilterDialog(),
                  child: Container(
                    width: 77,
                    height: 28,
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F8FF),
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
          ),
          Expanded(
              child: Container(
            color: ColorUtils.bodyBg,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: (itemWidth / itemHeight)),
                itemCount: exploreList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 116,
                        height: 102,
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.white, width: 2),
                          gradient: const LinearGradient(
                              colors: [Color(0xffD4E2FF), Color(0xffE7DEFF)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: Image.asset(
                          'assets/images/${exploreList[index].image}.png',
                          width: exploreList[index].width,
                          height: exploreList[index].height,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              exploreList[index].name.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textstyle.copyWith(
                                  fontFamily: 'AbhayaLibre', fontSize: 10),
                            ),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .015),
                          Image.asset(
                            'assets/images/rs.png',
                            width: 6.05,
                            height: 8.55,
                            fit: BoxFit.fill,
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .01),
                          Text(
                            exploreList[index].price.toString(),
                            style: textstyle.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorUtils.blueHintText,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ))
        ],
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
      builder: (context) => const ExploreCategoryFilter(),
    );
  }
}

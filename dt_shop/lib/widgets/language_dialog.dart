// ignore_for_file: must_be_immutable

import 'package:dt_shop/cubit/language/cubit/language_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageSheet extends StatelessWidget {
  LanguageSheet({super.key});

  int selectedLanIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LanguageCubit, LanguageState>(
      listener: (context, state) {
        if (state is LanguageSelection) {
          selectedLanIndex = state.index;
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .68,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    'Change Language',
                    style: textstyle.copyWith(
                        color: const Color(0xff454545), fontSize: 20),
                  ),
                  actions: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        color: Color(0xff454545),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: languageList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 1.3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          InkWell(
                            onTap: () => context
                                .read<LanguageCubit>()
                                .selectedIndex(index),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: MediaQuery.of(context).size.width * .42,
                                height:
                                    MediaQuery.of(context).size.height * .08,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selectedLanIndex == index
                                            ? ColorUtils.blueHintText
                                            : const Color(0xffB4B4B4)),
                                    borderRadius: BorderRadius.circular(5)),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffE1EBFF),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          languageList[index].label.toString(),
                                          style: textstyle.copyWith(
                                              color: const Color(0xff4E89FF),
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Center(
                                      child: Text(
                                        languageList[index].name.toString(),
                                        style: textstyle.copyWith(
                                            color: const Color(0xff727272),
                                            fontSize: 20),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          selectedLanIndex == index
                              ? Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Image.asset(
                                    'assets/images/check.png',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.fill,
                                  ))
                              : const SizedBox()
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

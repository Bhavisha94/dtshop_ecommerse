import 'dart:developer';

import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              values: const [500, 10000],
              rangeSlider: true,
              max: 15000,
              min: 0,
              step: const FlutterSliderStep(step: 100),
              jump: true,
              trackBar: const FlutterSliderTrackBar(
                  activeTrackBarHeight: 2,
                  activeTrackBar: BoxDecoration(color: ColorUtils.orange)),
              tooltip: FlutterSliderTooltip(
                  disableAnimation: true,
                  alwaysShowTooltip: true,
                  textStyle: textstyle.copyWith(
                      fontSize: 14,
                      color: const Color(0xffBBBBBB),
                      fontWeight: FontWeight.w600)),
              handler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: ColorUtils.orange,
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorUtils.white,
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )),
              rightHandler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: ColorUtils.orange,
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorUtils.white,
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )),
              disabled: false,
              onDragging: (handlerIndex, lowerValue, upperValue) {
                // _lowerValue = lowerValue;
                // _upperValue = upperValue;
                // setState(() {});
                log(lowerValue.toString());
              },
            ),
          )
        ],
      ),
    );
  }
}

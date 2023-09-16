import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.bgColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.transparent),
        title: Text(
          'Terms & Condition',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

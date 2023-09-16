import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class ReturnPolicy extends StatefulWidget {
  const ReturnPolicy({super.key});

  @override
  State<ReturnPolicy> createState() => _ReturnPolicyState();
}

class _ReturnPolicyState extends State<ReturnPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.bgColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.transparent),
        title: Text(
          'Return Policy',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

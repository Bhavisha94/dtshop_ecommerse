import 'package:flutter/material.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.bgColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.transparent),
        title: Text(
          'Privacy Policy',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.bgColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.transparent),
        title: Text(
          'About Us',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        width: 40,
        height: 50,
        child: Center(
          child: SvgPicture.asset("assets/images/back_arrow.svg"),
        ),
      ),
    );
  }
}

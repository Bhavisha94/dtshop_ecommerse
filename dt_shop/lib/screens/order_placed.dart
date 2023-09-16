import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/placed_order_bg.png'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/placed_order.png'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            Text(
              'Your Order is Placed!',
              style:
                  textstyle.copyWith(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Text(
              'Thanks for order Your is arrive on 23 Oct 2022',
              style: textstyle.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}

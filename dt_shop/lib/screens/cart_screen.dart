import 'package:dt_shop/utils/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.transparent,
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 112,
              color: const Color(0xffFAF9FE),
              child: Stepper(
                onStepCancel: () {},
                onStepContinue: () {},
                onStepTapped: (int index) {},
                steps: <Step>[
                  Step(
                    title: const Text('Step 1 title'),
                    content: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text('Content for Step 1')),
                  ),
                  const Step(
                    title: Text('Step 2 title'),
                    content: Text('Content for Step 2'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

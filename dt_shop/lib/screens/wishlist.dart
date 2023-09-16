import 'package:dt_shop/cubit/order/cubit/order_track_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/custom_appbar.dart';
import 'package:dt_shop/widgets/divider.dart';
import 'package:dt_shop/widgets/order_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class WishListWidget extends StatefulWidget {
  const WishListWidget({super.key});

  @override
  State<WishListWidget> createState() => _WishListWidgetState();
}

class _WishListWidgetState extends State<WishListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: CustomAppbar.appbarPreferedSize(context),
      body: Column(
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const CustomDivider(),
          Row(
            children: [
              OrderOptionWidget(
                option: 'All',
                index: 0,
                width: MediaQuery.of(context).size.width * .18,
                onTap: () =>
                    context.read<OrderTrackCubit>().selectedOrderIndex(0),
              ),
              OrderOptionWidget(
                option: 'Jeans',
                index: 1,
                width: MediaQuery.of(context).size.width * .18,
                onTap: () =>
                    context.read<OrderTrackCubit>().selectedOrderIndex(1),
              ),
            ],
          ),
          Flexible(
              child: GridView.builder(
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: .68),
            padding: const EdgeInsets.all(5),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: const Color(0xffB1B1B1)),
                    color: ColorUtils.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .235,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/wishlist_item.png'),
                              fit: BoxFit.fill)),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 5,
                              top: 5,
                              child:
                                  SvgPicture.asset('assets/images/close.svg')),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 3, left: 5, bottom: 3),
                      child: Text(
                        'Roadster',
                        style: textstyle.copyWith(
                            color: ColorUtils.grayShade9A, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/rs_small.png',
                            color: const Color(0xffB5B5B5),
                            width: 7.41,
                            height: 10.51,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            '804',
                            style:
                                textstyle.copyWith(color: ColorUtils.black20),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xff8A8A8A),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Move to Bag',
                          style: textstyle.copyWith(
                              color: ColorUtils.blueHintText,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

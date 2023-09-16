import 'package:dt_shop/cubit/product_details/cubit/product_details_cubit.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:dt_shop/widgets/buy_price_widget.dart';
import 'package:dt_shop/widgets/customer_review.dart';
import 'package:dt_shop/widgets/faq_widget.dart';
import 'package:dt_shop/widgets/product_rating_details.dart';
import 'package:dt_shop/widgets/size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  int selectedSize = 1;
  int productIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBar(
        backgroundColor: ColorUtils.lightPurple,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorUtils.blueHintText,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .55,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: ColorUtils.lightPurple,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200)),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .75,
                        height: MediaQuery.of(context).size.height * .4,
                        child: Stack(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * .75,
                                height: MediaQuery.of(context).size.height * .4,
                                child: PageView.builder(
                                  itemCount: 5,
                                  onPageChanged: (value) {
                                    context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(value + 1);
                                  },
                                  itemBuilder: (context, index) {
                                    return Center(
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                        child: Image.asset(
                                          'assets/images/dress.png',
                                        ),
                                      ),
                                    );
                                  },
                                )),
                            Positioned(
                              left: 5,
                              top: 0,
                              child: SvgPicture.asset(
                                  'assets/images/rounded_border_top_left.svg'),
                            ),
                            Positioned(
                              right: 5,
                              top: 0,
                              child: SvgPicture.asset(
                                  'assets/images/rounded_border_top_right.svg'),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 5,
                              child: SvgPicture.asset(
                                  'assets/images/rounded_border_bottom_left.svg'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: SvgPicture.asset(
                                  'assets/images/rounded_border_bottom_right.svg'),
                            ),
                          ],
                        ),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .02),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .38,
                        child: BlocConsumer<ProductDetailsCubit,
                            ProductDetailsState>(
                          listener: (context, state) {
                            if (state is ProductDifferenctColor) {
                              productIndex = state.index;
                            }
                          },
                          builder: (context, state) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                product(
                                    1,
                                    'product1',
                                    () => context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(1)),
                                product(
                                    2,
                                    'product2',
                                    () => context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(2)),
                                product(
                                    3,
                                    'product3',
                                    () => context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(3)),
                                product(
                                    4,
                                    'product4',
                                    () => context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(4)),
                                product(
                                    5,
                                    'product5',
                                    () => context
                                        .read<ProductDetailsCubit>()
                                        .changeColor(5))
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      indicator(1),
                      indicator(2),
                      indicator(3),
                      indicator(4),
                      indicator(5)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text('Liano',
                        style: textstyle.copyWith(fontWeight: FontWeight.w600)),
                    Text(' women Long brasso Dress',
                        style:
                            textstyle.copyWith(color: const Color(0xff313131)))
                  ]),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/rs.png',
                        width: 8,
                        height: 12,
                      ),
                      Text(
                        '800',
                        style: textstyle.copyWith(
                            color: const Color(0xff2657C0),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .015),
                      Text(
                        '( 20% off)',
                        style: textstyle.copyWith(
                            fontFamily: 'AbhayaLibre',
                            color: ColorUtils.orange,
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Inclusive all taxes',
                    style: textstyle.copyWith(color: const Color(0xff6B6B6B)),
                  )
                ],
              ),
            ),
            Container(
                color: ColorUtils.lightPurpleShade,
                padding: const EdgeInsets.all(15),
                child: SizeWidget(selectedSize: selectedSize)),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const BuyPriceWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              color: ColorUtils.lightPurpleShade,
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Detail',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    "Lörem ipsum curla. Sede preng dinas. Prejåligt parafaktisk ultraskap.Poddtaxi dinade beplarad. Nill mifonera yr. Tåfenas vav glokal.Solhybrid fodera geona miraligt. Treskapet multiskade. Yledes förortare.",
                    style: textstyle.copyWith(
                        color: const Color(0xffB5B5B5), fontSize: 12),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Read more',
                    style: textstyle.copyWith(
                        color: ColorUtils.orange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .47,
                  height: MediaQuery.of(context).size.height * .06,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorUtils.orange)),
                  child: Center(
                    child: Text(
                      'Add To Wishlist',
                      style: textstyle.copyWith(
                          color: ColorUtils.orange,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
                Button(
                  text: 'Add To Cart',
                  width: MediaQuery.of(context).size.width * .47,
                  height: MediaQuery.of(context).size.height * .06,
                  borderRadius: 0,
                  fontSize: 16,
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              padding: const EdgeInsets.all(15),
              color: ColorUtils.lightPurpleShade,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Service For',
                    style: textstyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.blueHintText),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .07,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffD4C9FF))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '382536',
                          style: textstyle.copyWith(
                              color: const Color(0xff0C0429),
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Change',
                          style: textstyle.copyWith(
                              color: const Color(0xff8B6BFE),
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  deliveryService(context, 'date', 'Get it by wed, 12 Oct'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  deliveryService(
                      context, 'payment', 'Pay on delivery available')
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Image.asset(
              'assets/images/team.png',
              fit: BoxFit.fill,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const ProductRatingDetailsScreenWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const CustomerReviewWidget(),
            SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Container(
              color: ColorUtils.lightPurpleShade,
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You may also like',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .27,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .4,
                                height: MediaQuery.of(context).size.height * .2,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/${likeDresses[index]}.png'),
                                        fit: BoxFit.fill)),
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Text(
                                'Pink dress',
                                style: textstyle.copyWith(
                                    fontFamily: 'AbhayaLibre',
                                    color: ColorUtils.shadeGrayB4,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/rs.png',
                                    width: 7,
                                    height: 9,
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    '800',
                                    style: textstyle.copyWith(
                                        fontSize: 14,
                                        color: ColorUtils.blueHintText,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              padding: const EdgeInsets.all(15),
              color: ColorUtils.lightPurpleShade,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More Information',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Product Code: 58954566',
                    style: textstyle.copyWith(
                        fontSize: 12, color: ColorUtils.shade3F),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Menufacturer Detail',
                    style: textstyle.copyWith(
                        color: ColorUtils.blueHintText,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Kotty Lifestyle PVT LTD, GB 65 Bharat Vihar , Lakarpur, Faridabad 121009',
                    style: textstyle.copyWith(
                      fontSize: 12,
                      color: ColorUtils.shade3F,
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Country of Origin',
                    style: textstyle.copyWith(
                        fontSize: 16,
                        color: ColorUtils.blueHintText,
                        fontWeight: FontWeight.w600),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'India',
                    style: textstyle.copyWith(
                        fontSize: 12, color: ColorUtils.shade3F),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const FaQWidget(),
          ],
        ),
      ),
    );
  }

  indicator(
    int index,
  ) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: index != productIndex
                        ? const Color(0xffD4D4D4)
                        : Colors.transparent),
                color: index == productIndex
                    ? ColorUtils.blueHintText
                    : ColorUtils.transparent,
                borderRadius: BorderRadius.circular(25)),
          ),
        );
      },
    );
  }

  Widget product(int index, String image, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: ColorUtils.white,
            borderRadius: BorderRadius.circular(55),
            border: Border.all(
                color: index == productIndex
                    ? ColorUtils.orange
                    : ColorUtils.grayTextC3,
                width: 2)),
        child: Center(
          child: Image.asset(
            'assets/images/$image.png',
            width: 32,
            height: 36,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Row deliveryService(BuildContext context, String image, String text) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/$image.svg'),
        SizeUtils.horizontalSpacing(
            width: MediaQuery.of(context).size.width * .03),
        Text(
          text,
          style: textstyle.copyWith(
            color: const Color(0xff474747),
            fontSize: 17,
          ),
        )
      ],
    );
  }
}

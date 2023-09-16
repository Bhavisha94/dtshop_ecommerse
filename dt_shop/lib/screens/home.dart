import 'package:dt_shop/widgets/best_deal.dart';
import 'package:dt_shop/widgets/home_page_category.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/mens_wear.dart';
import 'package:dt_shop/widgets/popular_widget.dart';
import 'package:dt_shop/widgets/search_textfield.dart';
import 'package:dt_shop/widgets/top_brands_widget.dart';
import 'package:dt_shop/widgets/top_collection.dart';
import 'package:dt_shop/widgets/top_deal.dart';
import 'package:dt_shop/widgets/top_related_products_widget.dart';
import 'package:dt_shop/widgets/weekend_sale.dart';
import 'package:dt_shop/widgets/women_fashion.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.transparent,
        title: SizedBox(
          width: 49,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
              Row(
                children: [
                  Text(
                    'DT',
                    style: textstyle.copyWith(
                        color: ColorUtils.blue, fontSize: 10),
                  ),
                  Text(
                    'Insider',
                    style: textstyle.copyWith(
                        color: ColorUtils.orange, fontSize: 10),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Image.asset(
              'assets/images/profile.png',
            ),
          ),
          SizeUtils.horizontalSpacing(width: 15),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .025),
              const SearchTextField(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              const HomePageCategory(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .25,
                    child: PageView.builder(
                      itemCount: 8,
                      controller: pageController,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/banner_bg.png'),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Image.asset(
                              'assets/images/page_img1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 8,
                    effect: const WormEffect(
                        dotHeight: 7,
                        dotWidth: 7,
                        spacing: 4,
                        activeDotColor: ColorUtils.blueHintText,
                        dotColor: ColorUtils.inactiveDotColor),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  const WomenFashion(),
                  // SizeUtils.verticalSpacing(
                  //     height: MediaQuery.of(context).size.height * .015),
                  const TopBrands(),
                  const MensFashionWidget(),
                  const TopRelatedProductsWidget(),
                  const TopCollectionWidget(),
                  WeekendSale(),
                  const BestDealWidget(),
                  const TopDealWidget(),
                  const PopularItemWidget()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dt_shop/cubit/introscreen/cubit/intro_cubit.dart';
import 'package:dt_shop/screens/intro1.dart';
import 'package:dt_shop/screens/intro2.dart';
import 'package:dt_shop/screens/intro3.dart';
import 'package:dt_shop/screens/intro4.dart';
import 'package:dt_shop/screens/login.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/widgets/intro_page_skip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  PageController controller = PageController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      body: BlocConsumer<IntroCubit, IntroState>(
        listener: (context, state) {
          if (state is IntroPageChanged) {
            page = state.pageNo;
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                    child: page != 0
                        ? PageSkip(controller: controller)
                        : const SizedBox(),
                  ),
                  // SizeUtils.verticalSpacing(
                  //     height: MediaQuery.of(context).size.height * .02),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .71,
                      child: PageView(
                        controller: controller,
                        onPageChanged: (value) =>
                            context.read<IntroCubit>().onPageChanged(value),
                        children: const [
                          IntroScreen1(),
                          IntroScreen2(),
                          IntroScreen3(),
                          IntroScreen4()
                        ],
                      )),
                  // SizeUtils.verticalSpacing(
                  //     height: MediaQuery.of(context).size.height * .03),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .1,
                          height: MediaQuery.of(context).size.height * .03,
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 4,
                            effect: const ExpandingDotsEffect(
                                dotWidth: 9.52,
                                dotHeight: 9.52,
                                spacing: 5,
                                activeDotColor: ColorUtils.brown,
                                dotColor: ColorUtils.grayShadeEB),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              if (page == 3) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Login()));
                              } else {
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 600),
                                    curve: Curves.easeIn);
                              }
                            },
                            child:
                                SvgPicture.asset('assets/images/forward.svg'))
                      ],
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}

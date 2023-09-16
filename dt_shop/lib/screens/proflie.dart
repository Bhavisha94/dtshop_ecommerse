import 'package:dt_shop/screens/about_us.dart';
import 'package:dt_shop/screens/edit_profile.dart';
import 'package:dt_shop/screens/login.dart';
import 'package:dt_shop/screens/order.dart';
import 'package:dt_shop/screens/privacy_policy.dart';
import 'package:dt_shop/screens/return_policy.dart';
import 'package:dt_shop/screens/terms_conditions.dart';
import 'package:dt_shop/screens/wallet.dart';
import 'package:dt_shop/screens/wishlist.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/divider.dart';
import 'package:dt_shop/widgets/language_dialog.dart';
import 'package:dt_shop/widgets/profile_menu.dart';
import 'package:dt_shop/widgets/rate_dialog.dart';
import 'package:dt_shop/widgets/submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.transparent,
        title: Text(
          'Profile',
          style: textstyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorUtils.blueHintText),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .12,
              color: ColorUtils.bodyBg,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/account.png'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bhoomi Patel',
                        style: textstyle.copyWith(
                            color: ColorUtils.blueHintText,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizeUtils.verticalSpacing(height: 5),
                      Container(
                        width: 74,
                        height: 23,
                        decoration: BoxDecoration(
                            color: const Color(0xffF4F1FF),
                            borderRadius: BorderRadius.circular(11.5)),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/load.svg')
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/next.svg')
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: ColorUtils.bodyBg,
              child: Column(
                children: [
                  ProfileMenuWidget(
                    leadingIcon: SvgPicture.asset('assets/images/edit.svg'),
                    isSubTitle: true,
                    title: 'Edit Profile',
                    isNext: true,
                    subTitle: 'Edit Profile',
                    titleColor: const Color(0xff4479EA),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const EditProdile())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: true,
                    isNext: true,
                    leadingIcon: Image.asset(
                      'assets/images/order.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                    title: 'My Order',
                    subTitle: 'Check your order status',
                    titleColor: const Color(0xff4479EA),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const OrderScreen())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: true,
                    isNext: true,
                    leadingIcon: Image.asset(
                      'assets/images/wishlist.png',
                      width: 20,
                      height: 15.5,
                      fit: BoxFit.fill,
                    ),
                    title: 'My wishlist',
                    subTitle: 'Check your wishlist',
                    titleColor: const Color(0xff4479EA),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const WishListWidget())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: true,
                    isNext: false,
                    leadingIcon: SvgPicture.asset('assets/images/wallet.svg'),
                    title: 'My Wallet',
                    subTitle: 'Check your wallet',
                    titleColor: const Color(0xff4479EA),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WalletScreen())),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: ColorUtils.bodyBg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/eng.svg'),
                    title: 'Language',
                    onTap: () => showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        isDismissible: false,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        builder: (context) => LanguageSheet()),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/about.svg'),
                    title: 'About Us',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUs())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/contact.svg'),
                    title: 'Contact Us',
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon:
                        SvgPicture.asset('assets/images/customer_support.svg'),
                    title: 'Customer Support',
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/privacy.svg'),
                    title: 'Privacy policy',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/terms.svg'),
                    title: 'Term & Conditions',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TermsConditions())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/return.svg'),
                    title: 'Return Policy ',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ReturnPolicy())),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/rate.svg'),
                    title: 'Rate Us',
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => const RateDialog()),
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/share.svg'),
                    title: 'Share',
                  ),
                  const DividerWidget(),
                  ProfileMenuWidget(
                    isSubTitle: false,
                    isNext: true,
                    titleColor: const Color(0xff898989),
                    leadingIcon: SvgPicture.asset('assets/images/delete.svg'),
                    title: 'Delete',
                  ),
                  const DividerWidget(),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .025),
                  Submit(
                      text: 'Logout',
                      onTap: () => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => const Login()),
                          (route) => false)),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .07),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: CustomAppbar.appBar('My Wallet'),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 217,
            color: const Color(0xffF6F3FF),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Image.asset(
                        'assets/images/wallet_img.png',
                        width: 167,
                        height: 162,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .08),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .4,
                      child: Center(
                        child: Column(
                          children: [
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .035),
                            Text(
                              'Wallet Balance:',
                              style: textstyle.copyWith(
                                  color: const Color(0xffBAA4FF), fontSize: 18),
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .025),
                            Text("\$ 20000",
                                style: textstyle.copyWith(
                                    color: const Color(0xff9F7DFF),
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Transaction',
                  style: textstyle.copyWith(
                      fontSize: 18, color: const Color(0xff4D4D4D)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .505,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: walletList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          height: 70,
                          decoration: BoxDecoration(
                              color: walletList[index].image == 'R'
                                  ? const Color(0xffF4F0FF)
                                  : const Color(0xffECF2FF)),
                          child: ListTile(
                            minVerticalPadding: 0,
                            leading: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: walletList[index].image == 'R'
                                      ? ColorUtils.walletTextPurple
                                      : ColorUtils.walletLightBlue),
                              child: Center(
                                child: Text(
                                  walletList[index].image.toString(),
                                  style: textstyle.copyWith(
                                      color: ColorUtils.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            title: Text(
                              walletList[index].title,
                              style: textstyle.copyWith(
                                  fontSize: 15,
                                  color: walletList[index].image == 'R'
                                      ? ColorUtils.walletTextPurple
                                      : const Color(0xff676DFF)),
                            ),
                            subtitle: Text(
                              walletList[index].subtitle,
                              style: textstyle.copyWith(fontSize: 15),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  walletList[index].amount,
                                  style: textstyle.copyWith(
                                      color: walletList[index].title == 'Debit'
                                          ? const Color(0xff555555)
                                          : ColorUtils.orange,
                                      fontSize: 15),
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .005),
                                Text(
                                  walletList[index].date,
                                  style: textstyle.copyWith(
                                      color: const Color(0xff8B8B8B),
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

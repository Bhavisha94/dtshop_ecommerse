import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class FaQWidget extends StatefulWidget {
  const FaQWidget({super.key});

  @override
  State<FaQWidget> createState() => _FaQWidgetState();
}

class _FaQWidgetState extends State<FaQWidget> {
  bool isRefundExpand = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.lightPurpleShade,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FAQ',
            style: textstyle.copyWith(
                color: ColorUtils.blueHintText,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffF7F5FF),
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'This Mobile is refundable or not?',
                  style: textstyle.copyWith(
                      color: ColorUtils.darkPurlpe,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isRefundExpand = !isRefundExpand;
                    });
                  },
                  child: Icon(
                      isRefundExpand
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: ColorUtils.darkPurlpe),
                )
              ],
            ),
          ),
          isRefundExpand
              ? Text(
                  'Lörem ipsum penade åvis. Sygeng sobir komosmos astrogt.\nLalig gyfask pont issade. Ponäktiga vossade niktiga.\nLaktiga rimyn, till nätpoker. Mår redade. \nÖrade bloggosfär soldusch. Eurotabel tide.\nSoment. Dodagyrad cirkulär ekonomi diling biong.\nDra åt helvete-kapital minöl har vist multikaren. Husamma emoji.\nVara på tårna sprängbälte inte oling. Helikoptermamma blogga till tredynde poren. \nFurar kaktigt. Dirat tvillingshoppare kombucha i batyrad. \nBefarade dibel, tyrilig i ponas. Otrohetskontroll gymoling. \nGäri kis dortad teopol. Utsmarta antigt juskapet. \nHeterov dibaktigt fadade. Visade völiga. Du kan vara drabbad.',
                  style: textstyle.copyWith(
                      color: const Color(0xffA09EA7), fontSize: 12),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

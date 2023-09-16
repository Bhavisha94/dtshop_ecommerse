import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/list.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:flutter/material.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.lightPurpleShade,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customer Review',
            style: textstyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ColorUtils.blueHintText),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .015),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alexa disuja',
                    style: textstyle.copyWith(
                        color: const Color(0xffBEBEBE), fontSize: 10),
                  ),
                  Row(
                    children: [
                      Text(
                        '4.3',
                        style: textstyle.copyWith(
                            color: const Color(0xff041436),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      const Icon(
                        Icons.star,
                        color: ColorUtils.darkOrange,
                        size: 15,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              itemCount: reviewList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/${reviewList[index]}.png'),
                            fit: BoxFit.fill)),
                  ),
                );
              },
            ),
          ),
          Text(
            'Geonisonas relig kod. Tåligen jödortad prer defuck. Ist rasuv belogi att ad.Ål besöngen, desa, om miskapet. Antitärade sor i panmani guvälogi. Akrossa nanoteknik, i loska.',
            style: textstyle.copyWith(
                color: const Color(0xffC6C6C6),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

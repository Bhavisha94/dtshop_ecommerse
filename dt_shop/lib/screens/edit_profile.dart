import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProdile extends StatefulWidget {
  const EditProdile({super.key});

  @override
  State<EditProdile> createState() => _EditProdileState();
}

class _EditProdileState extends State<EditProdile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorUtils.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorUtils.blueHintText,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: textstyle.copyWith(
              color: ColorUtils.blueHintText,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .005),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 176,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/edit_bg.png'),
                      fit: BoxFit.fill)),
              child: Center(
                child: Stack(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                                radius: 15,
                                backgroundColor: ColorUtils.blueHintText,
                                child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: const Color(0xffE7EEFF),
                                    child: SvgPicture.asset(
                                        'assets/images/edit.svg'))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Text(
              'Name',
              style: textstyle.copyWith(
                color: const Color(0xffAEAEAE),
                fontSize: 16,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xffF6F3FF)),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .07),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(child: Submit(text: 'Save')))
          ],
        ),
      ),
    );
  }
}

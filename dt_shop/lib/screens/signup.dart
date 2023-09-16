import 'package:dt_shop/screens/dashboard.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:dt_shop/widgets/textfield_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = true, showConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .45,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorUtils.darkBlue, ColorUtils.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .36,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sign_up_img.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .65,
            decoration: const BoxDecoration(
                color: ColorUtils.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(69),
                    topRight: Radius.circular(69))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .035),
                  Text(
                    'SignUp',
                    style: textstyle.copyWith(
                        color: ColorUtils.textBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .04),
                  const TextFieldRowWidget(
                    obsecure: false,
                    icon: 'assets/images/user.svg',
                    hintText: 'First Name',
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  const TextFieldRowWidget(
                    obsecure: false,
                    icon: 'assets/images/user.svg',
                    hintText: 'Last Name',
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  const TextFieldRowWidget(
                    obsecure: false,
                    icon: 'assets/images/at.svg',
                    hintText: 'Email',
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  TextFieldRowWidget(
                    obsecure: showConfirmPassword,
                    icon: 'assets/images/lock.svg',
                    hintText: 'Password',
                    suffixIcon: InkWell(
                        onTap: () {
                          if (showConfirmPassword) {
                            setState(() {
                              showConfirmPassword = false;
                            });
                          } else {
                            setState(() {
                              showConfirmPassword = true;
                            });
                          }
                        },
                        child: showConfirmPassword
                            ? SvgPicture.asset('assets/images/hide.svg')
                            : SvgPicture.asset('assets/images/show.svg')),
                    iconSize: const BoxConstraints(maxWidth: 16, maxHeight: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  TextFieldRowWidget(
                    obsecure: showConfirmPassword,
                    icon: 'assets/images/lock.svg',
                    hintText: 'Confirm Password',
                    suffixIcon: SvgPicture.asset('assets/images/hide.svg'),
                    iconSize: const BoxConstraints(maxWidth: 16, maxHeight: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Button(
                      text: 'SignUp',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .055,
                      borderRadius: 5,
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Dashboard()))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dt_shop/screens/dashboard.dart';
import 'package:dt_shop/screens/signup.dart';
import 'package:dt_shop/utils/colors.dart';
import 'package:dt_shop/utils/size.dart';
import 'package:dt_shop/utils/style.dart';
import 'package:dt_shop/widgets/button.dart';
import 'package:dt_shop/widgets/textfield_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    width: 220,
                    height: MediaQuery.of(context).size.height * .37,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/login.png'),
                    )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .64,
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
                    'Login',
                    style: textstyle.copyWith(
                        color: ColorUtils.textBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .04),
                  const TextFieldRowWidget(
                    obsecure: false,
                    icon: 'assets/images/at.svg',
                    hintText: 'User Name',
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  TextFieldRowWidget(
                    obsecure: true,
                    icon: 'assets/images/lock.svg',
                    hintText: 'Password',
                    suffixIcon: SvgPicture.asset('assets/images/hide.svg'),
                    iconSize: const BoxConstraints(maxWidth: 16, maxHeight: 16),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Forget Password?',
                      textAlign: TextAlign.end,
                      style: textstyle.copyWith(
                          color: ColorUtils.blueHintText, fontSize: 14),
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  Button(
                      text: 'Login',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .055,
                      borderRadius: 5,
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Dashboard()))),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child:
                              SvgPicture.asset('assets/images/left_line.svg')),
                      Text(
                        'Or',
                        style: textstyle.copyWith(
                            color: ColorUtils.grayTextC3,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child:
                              SvgPicture.asset('assets/images/right_line.svg'))
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/email.svg'),
                      SvgPicture.asset('assets/images/fb.svg'),
                      SvgPicture.asset('assets/images/mobile.svg')
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: textstyle.copyWith(
                            color: ColorUtils.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizeUtils.horizontalSpacing(width: 5),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                        },
                        child: Text(
                          'Signup',
                          style: textstyle.copyWith(
                              color: ColorUtils.pink,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dt_shop/screens/introduction.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash.png'), fit: BoxFit.fill),
        ),
      ),
    );
  }

  navigate() {
    (Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const IntroductionPage()));
    }));
  }
}

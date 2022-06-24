import 'package:flutter/material.dart';

import 'first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }
  

  navigate() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const FirstScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("images/splash.png"), context);

    return Container(
      foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/splash.png'))),
    );
  }
}

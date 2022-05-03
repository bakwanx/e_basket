import 'dart:async';

import 'package:e_basket/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  initTimer(){
    Timer(const Duration(seconds: 4), () => {
      Navigator.pushNamedAndRemoveUntil(
        context,
        "/home",
        (route) => false
      )
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png"
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.2
              ),
              child: Text(
                "Media Pembelajaran Teknik Dasar Bola Basket",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

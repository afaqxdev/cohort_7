import 'dart:async';

import 'package:flutter/material.dart';
import 'package:week_5/const/app_colors.dart';
import 'package:week_5/const/app_text.dart';
import 'package:week_5/const/images_path.dart';
import 'package:week_5/view/Login%20Screen/login_screen.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("i called build ");

    return Scaffold(
      backgroundColor: Color(0xff007EF2),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(splasLogo, width: 63, height: 51),
            SizedBox(height: 9),
            Text(
              splasTitle,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
                fontFamily: 'Nunito',
                color: Colors.white,
              ),
            ),
            Text(
              splasSubTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nunito',
                color: yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

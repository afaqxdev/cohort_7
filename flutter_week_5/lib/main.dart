import 'package:flutter/material.dart';
import 'package:week_5/view/Splash_Screen/splash_screen.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScren());
  }
}

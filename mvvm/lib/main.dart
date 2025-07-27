import 'package:flutter/material.dart';
import 'package:mvvm/utils/custom_button.dart';
import 'package:mvvm/utils/custom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                name: "Customtext",
                size: 30,
                fontWeight: FontWeight.w900,
              ),

              CustomButton(
                name: "login",
                onTap: () {
                  print("Button Pressed");
                },
                color: Colors.blueGrey,
                width: 300,
                height: 50,
                textSize: 20,
                textWeight: FontWeight.bold,
                borderRadius: 10,
                textcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

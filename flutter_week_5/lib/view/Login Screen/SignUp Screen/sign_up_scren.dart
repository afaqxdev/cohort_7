import 'package:flutter/material.dart';

class SignUpScren extends StatelessWidget {
  const SignUpScren({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent),
        ),
      ),
      body: Column(children: [Image.asset(path)]),
    );
  }
}

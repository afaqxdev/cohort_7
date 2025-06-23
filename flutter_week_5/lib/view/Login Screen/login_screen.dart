import 'package:flutter/material.dart';
import 'package:week_5/const/images_path.dart';
import 'package:week_5/view/Login%20Screen/SignUp%20Screen/sign_up_scren.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(splasLogo),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScren(path: splasLogo);
                    },
                  ),
                );
              },
              child: Text("if you have not login please sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}

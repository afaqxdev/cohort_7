import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week_07/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3));
    getData();
    super.initState();
  }

  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final name = pref.getString("name");
    print(name);
    if (name != null) {
      //home
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Scaffold(body: Center(child: Text('Home')));
          },
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

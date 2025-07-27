import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_09/container_provider.dart';
import 'package:week_09/home_provider.dart';
import 'package:week_09/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ContainerProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        // themeMode: value.themeIsDark ? ThemeMode.light : ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(bodySmall: TextStyle(color: Colors.amber)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),

        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

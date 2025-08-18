import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_setup/firebase_options.dart';
import 'package:firebase_setup/view/add_note/add_note_provider.dart';
import 'package:firebase_setup/view/home_screen/home_provider.dart';
import 'package:firebase_setup/view/sign_in/sign_in_provider.dart';
import 'package:firebase_setup/view/sign_up/sign_up_provider.dart';
import 'package:firebase_setup/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => AddNoteProvider()),
        ChangeNotifierProvider(create: (_) => HomePrvoder()),
      ],
      child: const KeepNotesApp(),
    ),
  );
}

class KeepNotesApp extends StatelessWidget {
  const KeepNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep Notes',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Splash Screen with Animation

// Sign In Screen
// Sign Up Screen// Home Screen

// Add Note Screen// Settings Screen

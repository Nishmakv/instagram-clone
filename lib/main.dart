import 'package:flutter/material.dart';
import 'package:instagram/screen/splash.dart';


const SAVE_KEY_NAME = 'userLoggedIn';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 236, 236, 236),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 236, 236, 236),
            ),
          ),
        ),
      ),
      home: const ScreenSplash(),
    );
  }
}

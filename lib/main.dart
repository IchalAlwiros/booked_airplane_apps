import 'package:flutter/material.dart';
import 'package:flutter_airplane/ui/pages/bonus_screen.dart';
import 'package:flutter_airplane/ui/pages/get_started_screen.dart';
import 'package:flutter_airplane/ui/pages/main_screen.dart';
import 'package:flutter_airplane/ui/pages/sigin_up_screen.dart';
import 'package:flutter_airplane/ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Plane',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUpScreen(),
        '/bonus': (context) => BonusScreen(),
        '/main': (context) => MainScreen(),
      },
    );
  }
}

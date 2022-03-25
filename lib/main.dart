import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/cubit/screen_cubit.dart';
import 'package:flutter_airplane/ui/pages/bonus_screen.dart';
import 'package:flutter_airplane/ui/pages/detail_screen.dart';
import 'package:flutter_airplane/ui/pages/get_started_screen.dart';
import 'package:flutter_airplane/ui/pages/home_screen.dart';
import 'package:flutter_airplane/ui/pages/main_screen.dart';
import 'package:flutter_airplane/ui/pages/sigin_up_screen.dart';
import 'package:flutter_airplane/ui/pages/sign_in_sceen.dart';
import 'package:flutter_airplane/ui/pages/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ScreenCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Plane',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/get-started': (context) => GetStarted(),
          '/sign-up': (context) => SignUpScreen(),
          '/sign-in': (context) => SignInScreen(),
          '/bonus': (context) => BonusScreen(),
          '/main': (context) => MainScreen(),
          '/home': (context) => HomaScreen(),
          '/detail': (context) => DetailsScreen(),
        },
      ),
    );
  }
}

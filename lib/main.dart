import 'package:flutter/material.dart';
import 'package:medhub_app/screens/cart.dart';
import 'package:medhub_app/screens/checkout.dart';
import 'package:medhub_app/screens/home.dart';
import 'package:medhub_app/screens/login.dart';
import 'package:medhub_app/screens/login_success.dart';
import 'package:medhub_app/screens/on_boarding_1.dart';
import 'package:medhub_app/screens/on_boarding_2.dart';
import 'package:medhub_app/screens/register.dart';
import 'package:medhub_app/screens/splash_screen.dart';
import 'package:medhub_app/screens/success.dart';
import 'package:medhub_app/screens/verify.dart';
import 'package:medhub_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MedHub App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/onboarding1': (context) => const OnBoarding1(),
        '/onboarding2': (context) => const OnBoarding2(),
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Register(),
        '/verify': (context) => const VerifyOTP(),
        '/login_success': (context) => const LoginSuccess(),
        '/home': (context) => const Home(),
        '/cart': (context) => const Cart(),
        '/checkout': (context) => const Checkout(),
        '/success': (context) => const Success(),
      },
    );
  }
}

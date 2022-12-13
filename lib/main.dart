import 'package:flutter/material.dart';
import 'package:app/auth/signin.dart';
import 'package:app/auth/signup.dart';
import 'package:app/home/details_screen.dart';
import 'package:app/home/home_screen.dart';
import 'package:app/navigations/bottom_nav_bar.dart';
import 'package:app/navigations/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atelier Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: const HomeScreen()
      routes: {
        Signin.routeName: (context) => const Signin(),
        SignUp.routeName: (context) => SignUp(),
        BottomNavScreen.routeName: (context) => const BottomNavScreen(),
        CustomTabbar.routeName: (context) => const CustomTabbar(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailsScreen.routeName: (context) => const DetailsScreen(),
      },
    );
  }
}

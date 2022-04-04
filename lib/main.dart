import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Home_page.dart';
import 'package:flutter_catalog/pages/Login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: '/login',
      routes: {
        Myroutes.loginRoute: (context) => const LoginPage(),
        Myroutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}

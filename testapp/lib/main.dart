import 'package:flutter/material.dart';
import 'package:testapp/Pages/Home_page.dart';
import 'package:testapp/Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,

      theme: ThemeData(
        primarySwatch: Colors.pink,
        //fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => Homepage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testapp/Pages/Home_page.dart';
import 'package:testapp/Pages/login_page.dart';
import 'package:testapp/utilis/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,this help to indicate we are in development mode
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/homepage",
      routes: {
        "/": (context) =>
            const LoginPage(), //Understand this concepts again and again revise this things
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}

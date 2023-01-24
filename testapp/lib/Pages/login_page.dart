import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
            child: Text(
      "loginpage",
      style: TextStyle(
          fontSize: 20,
          fontFamily: "Times",
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(198, 5, 22, 201)),
      textScaleFactor: 2.0,
    )));
  }
}

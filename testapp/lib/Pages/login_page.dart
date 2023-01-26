import 'package:flutter/material.dart';

import '../utilis/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(206, 245, 245, 245),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
              //child: Text("welcome kshitij"),
            ),
            const Text("Welcome",
                style: TextStyle(
                  fontSize: 34,
                )),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter User name", labelText: "Username"),
                ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 10)),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              style: TextButton.styleFrom(minimumSize: const Size(100, 40)),
              child: const Text(
                "login",
                textScaleFactor: 1.30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

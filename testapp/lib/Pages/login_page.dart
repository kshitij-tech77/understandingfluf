import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(206, 245, 245, 245),
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
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10)),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                print("hi kshitij");
              },
              child: const Text("login"))
        ],
      ),
    );
  }
}

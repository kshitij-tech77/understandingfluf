import 'package:flutter/material.dart';
import 'package:testapp/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = ""; //review
  bool changeButoom = false; //review

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
            Text("Welcome $name ",
                style: const TextStyle(
                  fontSize: 34,
                )),
            Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter User name", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
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

            InkWell(
              onTap: () async {
                setState(() {
                  //review
                  changeButoom = true; //review
                });
                await Future.delayed(const Duration(
                    seconds:
                        4)); //wait for this 8 second and take me to next page
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                  duration: const Duration(
                      seconds:
                          5), //Basically this is saying take one second and do some animations
                  height: 50,
                  width: changeButoom ? 50 : 150,
                  //color: Colors.pink,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // shape: changeButoom ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.circular(changeButoom ? 50 : 10), //review
                    color: Colors.pink,
                  ),
                  child: changeButoom
                      ? const Icon(Icons.done, color: Colors.white) //review
                      : const Text(
                          "login",
                          textScaleFactor: 1.50,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
            )
            // ElevatedButton(
            //  onPressed: () {
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
            // style: TextButton.styleFrom(minimumSize: const Size(100, 40)),
            // child: const Text(
            //   "login",
            //textScaleFactor: 1.30,
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}

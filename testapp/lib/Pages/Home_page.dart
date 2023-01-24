import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 40;
  final String name = "kshitij";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Kshitijapp")),
      ),
      body: Center(
        child: Container(
          child: Text(
              "I promise I will continue working in fluter for $days  and my name is $name"),
        ),
      ),
      drawer: const Drawer(),
    
    );
  }
}

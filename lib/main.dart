import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(
                const Color.fromARGB(255, 176, 230, 252),
                const Color.fromARGB(255, 184, 180, 236),
                const Color.fromARGB(255, 196, 164, 235),
        ),
      )),
    ),
  );
}
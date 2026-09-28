import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 176, 230, 252),
                const Color.fromARGB(255, 184, 180, 236),
                const Color.fromARGB(255, 196, 164, 235),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              "Hello world!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              )
            ),
          ),
        );
  }
}
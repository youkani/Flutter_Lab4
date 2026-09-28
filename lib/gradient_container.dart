import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;
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
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: StyledText("Hello world!"),
          ),
        );
  }
}
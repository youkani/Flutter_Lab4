import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  GradientContainer(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });
  var activeDiceImage = 'assets/images/dice-1.png';

void rollDice() {
  activeDiceImage = 'assets/images/dice-4.png';
  print('Изменили картинку');
}
@override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2, color3],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDiceImage,
                  width: 300,
                ),
                // const SizedBox(height: 20), 
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    foregroundColor: Colors.lime,
                    textStyle: const TextStyle(
                    fontSize: 30,
                    ),
                  ),
                  child: Text("Roll Dice"),
                ),
              ],
            ),
          ),
        );
  }
}
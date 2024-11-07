import 'package:flutter/material.dart';

import 'Roll_Dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this._color1,this._color2,{super.key});
  final Color _color1;
  final Color _color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            _color1,
            _color2,
          ],begin: Alignment.topLeft,
              end: Alignment.bottomRight)
      ),child: const Center(
      child: RollDice(),
    ),
    );
  }
}

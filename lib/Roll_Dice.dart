import 'dart:math';

import 'package:flutter/material.dart';

var _randomizer = Random();
class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var _currentDice = 2;
  void rollDice(){
    setState(() {
      _currentDice = _randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width= MediaQuery.sizeOf(context).width*1;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Current Dice Number is $_currentDice',style: const TextStyle(fontSize: 18,color: Colors.white),),
        Image(
          image: AssetImage('assets/dice-$_currentDice.png'),
          width: width*0.2,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll Dice")),
      ],
    );
  }
}

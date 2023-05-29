import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-5.png';

  void rollDice() {
    setState(() {
      var diceRoll = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 250.0,
        ),
        // OutlinedButton(onPressed: onPressed, child: child)
        const SizedBox(
          height: 16,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 22,
            ),
          ),
        ),
        //
      ],
    );
  }
}

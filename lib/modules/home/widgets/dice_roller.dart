import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRollResult = 3;

  void rollDice() {
    setState(() {
      diceRollResult = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Đổ xúc xắc',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        const SizedBox(height: 30.0),
        Image.asset('assets/img/dice-$diceRollResult.png', width: 200.0),
        const SizedBox(height: 30.0),
        TextButton(
          onPressed: rollDice,
          style:
              TextButton.styleFrom(textStyle: const TextStyle(fontSize: 28.0)),
          child: const Text('Lắc ngay'),
        )
      ],
    );
  }
}

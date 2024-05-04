import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var activeDiceImage = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Roll the dice!',
          style: GoogleFonts.lobster(
            color: Colors.black,
            fontSize: 50,
            decoration: TextDecoration.none,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/dice-$activeDiceImage.png',
            width: 200,
            key: ValueKey(activeDiceImage),
          ),
        ),
        IconButton(
          onPressed: rollDice,
          color: Colors.black,
          icon: const Icon(Icons.shuffle),
          iconSize: 35,
          padding: const EdgeInsets.all(28),
        ),
      ],
    );
  }
}

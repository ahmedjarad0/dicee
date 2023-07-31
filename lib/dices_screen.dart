import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int _leftPic = 2;
  int _rightPic = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Dices',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: clickDice,
                    child: Image.asset('images/dice$_leftPic.png'))),
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: TextButton(
                    onPressed: clickDice,
                    child: Image.asset('images/dice$_rightPic.png')))
          ],
        ),
      ),
    );
  }

  void clickDice() {
    setState(() {
      _leftPic = Random().nextInt(6) + 1;
      _rightPic = Random().nextInt(6) + 1;
    });
  }
}

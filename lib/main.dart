import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(DiceApp());
}
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNumber1=1;
  int diceNumber2=5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: createRandomDiceNumber,
        child: Scaffold(
          backgroundColor: Colors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           const Text('Dice App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Image.asset('images/dice$diceNumber1.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            ),
            Image.asset('images/dice$diceNumber2.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            ),
            ],),
        
           const Text('Lets Roll',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontStyle: FontStyle.italic
            ),
            ),
          ]),
        ),
      ),
    );
  }

    void createRandomDiceNumber() async {
      Random random= Random();

      for (int i=0;i<15;i++) {
        await Future.delayed(const Duration(milliseconds: 100), () {
      diceNumber1= random.nextInt(6) +1;
      diceNumber2= random.nextInt(6) +1;
      setState(() {});
      });
   }
 }
}
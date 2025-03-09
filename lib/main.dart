import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: const Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void updatefunc() {
    setState(() {
      leftDiceNum = Random().nextInt(5 + 1) + 1;
      rightDiceNum = Random().nextInt(5 + 1) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                updatefunc();
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                updatefunc();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatefulWidget {
//   const DicePage({Key? key}) : super(key: key);
//
//   @override
//   _DicePageState createState() => _DicePageState();
// }
//
// class _DicePageState extends State<DicePage> {
//   int leftDiceNumber = 1;
//   int rightDiceNumber = 1;
//
//   void rollDice() {
//     setState(() {
//       leftDiceNumber = Random().nextInt(6) + 1;
//       rightDiceNumber = Random().nextInt(6) + 1;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               onPressed: rollDice,
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: rollDice,
//               child: Image.asset('images/dice$rightDiceNumber.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

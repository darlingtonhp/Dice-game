import 'package:dice/bloc/dice.dart';
import 'package:dice/views/dice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => DiceBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: const Center(child: Text('Dice')),
            backgroundColor: Colors.blueAccent,
          ),
          body: const DicePage(),
        ),
      ),
    ),
  );
}



//   @override
//   State<DicePage> createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
  // int leftDiceNumber = 1;
  // int rightDiceNumber = 1;

  // void changeDiceFace() {
  //   setState(
  //     () {
  //       leftDiceNumber = Random().nextInt(6) + 1;
  //       rightDiceNumber = Random().nextInt(6) + 1;
  //     },
  //   );
  // }

 







import 'package:dice/bloc/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceBloc, DiceState>(
      builder: (context, state) {
        return Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    context
                        .read<DiceBloc>()
                        .add(const DiceLeftDiceFaceChanged());
                  },
                  child: Image.asset('images/dice${state.leftDiceNumber}.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    context
                        .read<DiceBloc>()
                        .add(const DiceRightDiceFaceChanged());
                  },
                  child: Image.asset('images/dice${state.rightDiceNumber}.png'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

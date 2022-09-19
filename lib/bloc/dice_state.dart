import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class DiceState {
  final int leftDiceNumber;
  final int rightDiceNumber;
  const DiceState(this.leftDiceNumber, this.rightDiceNumber);
}

class DiceInitial extends DiceState {
  const DiceInitial(super.leftDiceNumber, super.rightDiceNumber);
}

class DiceFaceChanging extends DiceState {
  const DiceFaceChanging(super.leftDiceNumber, super.rightDiceNumber);
}

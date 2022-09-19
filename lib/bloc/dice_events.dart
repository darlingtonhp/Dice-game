import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class DiceEvent {
  const DiceEvent();
}

class DiceRightDiceFaceChanged extends DiceEvent {
  const DiceRightDiceFaceChanged();
}

class DiceLeftDiceFaceChanged extends DiceEvent {
  const DiceLeftDiceFaceChanged();
}

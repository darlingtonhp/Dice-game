import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:dice/bloc/dice.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  DiceBloc() : super(const DiceInitial(1, 1)) {
    on<DiceRightDiceFaceChanged>((event, emit) {
      emit(DiceFaceChanging(Random().nextInt(6) + 1, Random().nextInt(6) + 1));
    });
    on<DiceLeftDiceFaceChanged>(
      (event, emit) {
        emit(
            DiceFaceChanging(Random().nextInt(6) + 1, Random().nextInt(6) + 1));
      },
    );
  }
}

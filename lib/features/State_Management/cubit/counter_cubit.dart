import 'package:bmw/features/State_Management/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0, 0));

  void increment() {
    state.anotherValue++;
    print('Incrementing: ${state.counterValue} + ${state.anotherValue}');
    emit(CounterState(state.counterValue + state.anotherValue));
  }

  void decrement() {
    if (state.counterValue > 0) {
      state.anotherValue++;
      print('Decrementing: ${state.counterValue} - ${state.anotherValue}');

      emit(CounterState(state.counterValue - state.anotherValue));
    }
  }

  void reset() => emit(CounterState(0, 0));
}

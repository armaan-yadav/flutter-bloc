import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<Map<String, dynamic>> {
  CounterCubit()
      : super({
          "count": 1,
          "name": "Armaan",
        }); // passing the inital value of counter

  void increment() {
    emit({...state, "count": state["count"] + 1});
  }

  void decrement() {
    emit({...state, "count": state["count"] - 1});
  }
}

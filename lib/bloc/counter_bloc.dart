import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, Map> {
  CounterBloc()
      : super({
          "count": 1,
          "name": "Armaan",
        }) {
    on<CounterIncrement>(
      (event, emit) {
        print("incrementing");
        emit({
          ...state,
          "count": state["count"] + 1,
        });
      },
    );
    on<CounterDecremnt>(
      (event, emit) {
        emit({
          ...state,
          "count": state["count"] - 1,
        });
      },
    );
  }
}

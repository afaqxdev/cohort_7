import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

class Bloclogic extends Bloc<CounterEvent, CounterState> {
  Bloclogic() : super(CounterState()) {
    on<Increament>((event, emit) {
      emit(state.copyWith(value: state.counterValu + 1));
    });

    on<Decreament>((event, emit) {
      emit(state.copyWith(value: state.counterValu - 1));
    });
  }
}

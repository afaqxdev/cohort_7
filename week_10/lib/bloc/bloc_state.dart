import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CounterState extends Equatable {
  int counterValu;

  CounterState({this.counterValu = 10});
  CounterState copyWith({int? value, String? name}) {
    return CounterState(counterValu: value ?? counterValu);
  }

  @override
  List<Object> get props => [counterValu];
}

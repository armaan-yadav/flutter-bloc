part of "counter_bloc.dart";

sealed class CounterEvent {}

final class CounterIncrement extends CounterEvent {}

final class CounterDecremnt extends CounterEvent {}

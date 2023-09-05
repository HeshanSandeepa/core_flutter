part of 'life_cycle_bloc.dart';

@immutable
abstract class LifeCycleState {}

class LifeCycleInitial extends LifeCycleState {}

class LifeCycleUpdated extends LifeCycleState {
  final int number;

  LifeCycleUpdated(this.number);
}

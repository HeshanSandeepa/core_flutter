import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'life_cycle_event.dart';
part 'life_cycle_state.dart';

class LifeCycleBloc extends Bloc<LifeCycleEvent, LifeCycleState> {
  LifeCycleBloc() : super(LifeCycleInitial()) {
    on<UpdateEvent>(_update);
  }

  _update(UpdateEvent event, Emitter<LifeCycleState> emit) async {
    final number = Random().nextInt(2555);
    emit(LifeCycleUpdated(number));
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_cubit_samples/cubit/internet_cubit.dart';
import 'package:bloc_cubit_samples/utils/enums.dart';
import 'package:equatable/equatable.dart';

part 'internet_monitor_state.dart';

class InternetMonitorCubit extends Cubit<InternetObserverState> {
  final InternetCubit internetCubit;
  StreamSubscription? internetStreamSubscription;
  InternetMonitorCubit({required this.internetCubit}) : super(InternetObserverState(counterValue: 0)){
    internetStreamSubscription = internetCubit.stream.listen((internetState) {

      if(internetState is InternetConnected && internetState.connectionType == ConnectionType.wifi){
        increment();
      } else if(internetState is InternetConnected && internetState.connectionType == ConnectionType.mobile){
        decrement();
      }
    });

  }

  void increment() => emit(InternetObserverState(counterValue: state.counterValue+1));

  void decrement() => emit(InternetObserverState(counterValue: state.counterValue-1));
}

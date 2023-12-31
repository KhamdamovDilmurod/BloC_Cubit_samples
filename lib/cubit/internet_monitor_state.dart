part of 'internet_monitor_cubit.dart';

abstract class InternetMonitorState extends Equatable {
  const InternetMonitorState();
}

class InternetObserverState extends InternetMonitorState{
  int counterValue;

  InternetObserverState({required this.counterValue});

  @override
  List<Object?> get props => [];

}

class Initial extends InternetMonitorState {
  @override
  List<Object> get props => [];
}

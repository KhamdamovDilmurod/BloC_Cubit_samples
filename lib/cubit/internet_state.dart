part of 'internet_cubit.dart';

abstract class InternetState extends Equatable {
  InternetState();
}

class InternetLoading extends InternetState {
  @override
  List<Object> get props => [];
}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;
  bool wasIncremented;

  InternetConnected({required this.connectionType, required this.wasIncremented});

  @override
  List<Object> get props => [connectionType];
}

class InternetDisconnected extends InternetState {
  @override
  List<Object> get props => [];
}

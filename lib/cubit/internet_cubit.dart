import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_cubit_samples/utils/enums.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  StreamSubscription? connectivityStreamSubscription;

  InternetCubit({required this.connectivity}) : super(InternetLoading()) {
    monitorInternetConnection();
  }

  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    return connectivityStreamSubscription = connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnected(ConnectionType.wifi);
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnected(ConnectionType.mobile);
      } else if (connectivityResult == ConnectivityResult.none) {
        emitDisConnected();
      }
    });
  }

  void emitInternetConnected(ConnectionType connectionType) => emit(InternetConnected(connectionType: connectionType, wasIncremented: true));

  void emitDisConnected() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    // TODO: implement close
    connectivityStreamSubscription?.cancel();
    return super.close();
  }
}
